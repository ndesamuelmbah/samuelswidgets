class Keys {
  static const loginStatus = 'loginStatus';
  static const authUser = 'authUser';
  static const updatePromptTime = 'updatePromptTime';
  static const authenticatedTime = 'authenticatedTime';
  static const firebaseAuthUser = 'firebaseAuthUser';
  static const envVars = 'envVars';
  static const appConfigUrl =
      'https://villagecredit.s3.eu-central-1.amazonaws.com/secretes/villagecredit_config.json';
  static const loanReasonText = "loanReasonText";
  static const loanAmountText = "loanAmountText";
  static const loanDateText = "loanDateText";
  static const lastNjangiPlayDate = 'lastNjangiPlayDate';
  static const proposedPaymentDate = "proposedPaymentDate";
  static const lastTimeUsersWereFetched = "lastTimeUsersWereFetched";
  static const lastTimeMediaWereFetched = "lastTimeMediaWereFetched";
  static const pendingApplicants = "pendingApplicants";
  static const savedMediaFiles = "savedMediaFiles";
  static const njangiType = 'njangiType';
  static const guarantor1 = 'guarantor1';
  static const guarantor2 = 'guarantor2';
  static const guarantor3 = 'guarantor3';
  static const testKey = 'testKey';
  static const workingConfig = {
    "Version": "2012-10-17",
    "Id": "Policy1682906049905",
    "Statement": [
      {
        "Sid": "Stmt1682906046467",
        "Effect": "Allow",
        "Principal": "*",
        "Action": "s3:GetObject",
        "Resource": [
          "arn:aws:s3:::villagecredit/media/*",
          "arn:aws:s3:::villagecredit/secretes/*",
          "arn:aws:s3:::villagecredit/tests/*"
        ],
        "Condition": {
          "StringLike": {
            "aws:Referer": [
              "https://villagecredit.com/*",
              "http://villagecredit.com/*",
              "https://village-credit.web.app/*",
              "http://village-credit.web.app/*",
              "https://village-credit.firebaseapp.com/*",
              "http://village-credit.firebaseapp.com/*",
              "*127.0.0.1*",
              "*localhost*"
            ]
          },
          "IpAddress": {
            "aws:SourceIp": [
              "127.0.0.1",
              "67.160.103.34",
              "255.255.240.0",
              "255.255.255.0",
              "67.160.103.34/32",
              "2601:601:1301:25c0:88bc:2265:535:bcbf"
            ]
          }
        }
      }
    ]
  };
}
