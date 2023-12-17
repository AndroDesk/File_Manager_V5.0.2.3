.class public Lorg/swiftp/Account;
.super Ljava/lang/Object;
.source "Account.java"


# instance fields
.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUsername()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/swiftp/Account;->username:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public setUsername(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/swiftp/Account;->username:Ljava/lang/String;

    .line 3
    return-void
.end method
