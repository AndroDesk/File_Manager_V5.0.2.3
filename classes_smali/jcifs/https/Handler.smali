.class public Ljcifs/https/Handler;
.super Ljcifs/http/Handler;
.source "Handler.java"


# static fields
.field public static final DEFAULT_HTTPS_PORT:I = 0x1bb


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljcifs/http/Handler;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public getDefaultPort()I
    .registers 2

    const/16 v0, 0x1bb

    return v0
.end method
