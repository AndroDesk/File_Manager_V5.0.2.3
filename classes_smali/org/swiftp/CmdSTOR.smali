.class public Lorg/swiftp/CmdSTOR;
.super Lorg/swiftp/CmdAbstractStore;
.source "CmdSTOR.java"


# instance fields
.field private input:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/swiftp/CmdAbstractStore;-><init>(Lorg/swiftp/SessionThread;)V

    iput-object p2, p0, Lorg/swiftp/CmdSTOR;->input:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lorg/swiftp/CmdSTOR;->input:Ljava/lang/String;

    invoke-static {v0}, Lorg/swiftp/FtpCmd;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/swiftp/CmdAbstractStore;->doStorOrAppe(Ljava/lang/String;Z)V

    return-void
.end method
