.class Ljcifs/smb/SmbTransport$ServerData;
.super Ljava/lang/Object;
.source "SmbTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/smb/SmbTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServerData"
.end annotation


# instance fields
.field public capabilities:I

.field public encryptedPasswords:Z

.field public encryptionKey:[B

.field public encryptionKeyLength:I

.field public flags:B

.field public flags2:I

.field public guid:[B

.field public maxBufferSize:I

.field public maxMpxCount:I

.field public maxNumberVcs:I

.field public maxRawSize:I

.field public oemDomainName:Ljava/lang/String;

.field public security:I

.field public securityMode:I

.field public serverTime:J

.field public serverTimeZone:I

.field public sessionKey:I

.field public signaturesEnabled:Z

.field public signaturesRequired:Z

.field public final synthetic this$0:Ljcifs/smb/SmbTransport;


# direct methods
.method public constructor <init>(Ljcifs/smb/SmbTransport;)V
    .registers 2

    .line 1
    iput-object p1, p0, Ljcifs/smb/SmbTransport$ServerData;->this$0:Ljcifs/smb/SmbTransport;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method
