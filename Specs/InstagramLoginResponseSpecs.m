#import <Expecta/Expecta.h>
#import <Specta/Specta.h>

#import "FakeInstagramOAuthResponse.h"
#import "InstagramSimpleOAuth.h"

SpecBegin(InstagramLoginResponse)

describe(@"InstagramLoginResponse", ^{
    __block InstagramLoginResponse *loginResponse;
    
    beforeEach(^{
        loginResponse = [[InstagramLoginResponse alloc] initWithInstagramOAuthResponse:[FakeInstagramOAuthResponse response]];
    });
    
    it(@"has an auth token", ^{
        expect(loginResponse.accessToken).to.equal(@"12345IdiotLuggageCombo");
    });
    
    it(@"has an Instagram user", ^{
        expect(loginResponse.user.userID).to.equal(@"yepyepyep");
        expect(loginResponse.user.username).to.equal(@"og-gsta");
        expect(loginResponse.user.fullName).to.equal(@"Ice Cube");
        expect(loginResponse.user.profilePictureURL).to.equal([NSURL URLWithString:@"http://uh.yeah.yuuueaaah.com/og-gsta"]);
    });
});

SpecEnd
