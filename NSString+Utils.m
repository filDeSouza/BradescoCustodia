/*
 The MIT License (MIT)
 
 Copyright (c) 2013 SuXinDe (Email: suxinde2009@126.com)
 
 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in
 all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 THE SOFTWARE.
 */

#import "NSString+Utils.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSString (Utils)

+ (BOOL)validatEmail:(NSString *)emailAddress
{
	if([NSString isNullOrEmpty:emailAddress])
		return FALSE;
	
	NSString *stricterFilterString = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    //    @"(?:[a-z0-9!#$%\\&'*+/=?\\^_`{|}~-]+(?:\\.[a-z0-9!#$%\\&'*+/=?\\^_`{|}"
    //    @"~-]+)*|\"(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21\\x23-\\x5b\\x5d-\\"
    //    @"x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])*\")@(?:(?:[a-z0-9](?:[a-"
    //    @"z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\\[(?:(?:25[0-5"
    //    @"]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-"
    //    @"9][0-9]?|[a-z0-9-]*[a-z0-9]:(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21"
    //    @"-\\x5a\\x53-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])+)\\])";
    NSString *laxString = @".+@.+\\.[A-Za-z]{2}[A-Za-z]*";
    NSString *emailRegex = stricterFilterString ? stricterFilterString : laxString;
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    return [emailTest evaluateWithObject:emailAddress];
}

+ (BOOL)isNullOrEmpty:(NSString *)s
{
    if(s == nil ||
       s.length == 0 ||
       [s isEqualToString:@""] ||
       [s isEqualToString:@"(null)"])
    {
        return YES;
    }
    
    return NO;
}


- (BOOL)hasSubString:(NSString *)string
{
    NSRange range = [self rangeOfString:string];
    if(range.location == NSNotFound)
        return FALSE;
    return TRUE;
}

- (BOOL)hasSubString:(NSString *)string options:(NSStringCompareOptions)mask
{
    NSRange range = [self rangeOfString:string options:mask];
    if(range.location == NSNotFound)
        return FALSE;
    return TRUE;
}

// ??????url??????????????????????????????
- (id)urlEncoded
{
    CFStringRef cfUrlEncodedString = CFURLCreateStringByAddingPercentEscapes(NULL,
                                                                             (CFStringRef)self,
                                                                             NULL,
                                                                             (CFStringRef)@"!#$%&'()*+,/:;=?@[]",
                                                                             kCFStringEncodingUTF8);
    NSString *urlEncoded = [NSString stringWithString:(__bridge NSString *)cfUrlEncodedString];
    CFRelease(cfUrlEncodedString);
    return urlEncoded;
}

- (NSString*)urlDecoded
{
	NSString *result = (NSString *)CFBridgingRelease(CFURLCreateStringByReplacingPercentEscapesUsingEncoding(kCFAllocatorDefault,
																						   (CFStringRef)self,
																						   CFSTR(""),
																						   kCFStringEncodingUTF8));
    //[result autorelease];
	return result;
}

/*
 ??????????????????????????????????????????????????????????????????????????????????????????
 ???????????????10???????????????09?????????????????????????????????????????????????????????00886?????????????????????0????????????????????????0960XXXXXX?????????00886-960XXXXXX
 ????????????????????????????????????2-3????????????0????????????????????????6-8?????????????????????????????????????????????????????????00886?????????????????????0??????????????????????????????????????????
 ?????????????????????02-8780XXXX?????????00886-2-8780XXXX?????????????????????????????????089-345XXX?????????00886-89-345XXX
 */

+ (BOOL)validateMobile:(NSString *)mobile
{
    if([NSString isNullOrEmpty:mobile])
        return FALSE;
    
    if(mobile.length < 10) return FALSE;
    
    //????????????13??? 15???18??????????????? \d ????????????
    //    NSString *phoneRegex = @"^((13[0-9])|(15[^4,\\D])|(18[0,0-9]))\\d{8}$";
    //    NSPredicate *phoneTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",phoneRegex];
    //    return [phoneTest evaluateWithObject:mobile];
    
    return TRUE;
}


////////////

- (CGSize)wrapString:(float)width
            fontSize:(float)fontSize
              isBold:(BOOL)isBold
{
    UIFont *font = isBold? [UIFont boldSystemFontOfSize:fontSize] : [UIFont systemFontOfSize:fontSize];
    CGSize size  = [self sizeWithFont:font
                    constrainedToSize:CGSizeMake(width, MAXFLOAT)
                        lineBreakMode:NSLineBreakByWordWrapping];
    return size;
}

- (float)wrapStringHeight:(float)width
                 fontSize:(float)fontSize
                   isBold:(BOOL)isBold
{
    return [self wrapString:width fontSize:fontSize isBold:isBold].height;
}

+ (NSString *)trimAngleBracketsAndBlanks:(NSString *)str
{
    if (str == nil) {
        return nil;
    }
    if (str.length == 0) {
        return nil;
    }
    if ([str isEqualToString:@" "]) {
        return nil;
    }
    
    NSString *s = [str stringByReplacingOccurrencesOfString:@"<" withString:@""];
    s = [s stringByReplacingOccurrencesOfString:@">" withString:@""];
    s = [s stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    return s;
}

+ (NSString *)trimShortHorizontalBar:(NSString *)str
{
    if (str == nil) {
        return nil;
    }
    if (str.length == 0) {
        return nil;
    }
    if ([str isEqualToString:@" "]) {
        return nil;
    }
    
    NSString *s = [str stringByReplacingOccurrencesOfString:@"-" withString:@""];
    
    return s;
}

@end
