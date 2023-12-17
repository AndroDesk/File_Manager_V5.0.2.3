.class public Lorg/swiftp/Account;
.super Ljava/lang/Object;
.source "Account.java"


# instance fields
.field private username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUsername()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/swiftp/Account;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setUsername(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/swiftp/Account;->username:Ljava/lang/String;

    return-void
.end method
