.class public Ljcifs/https/Handler;
.super Ljcifs/http/Handler;
.source "Handler.java"


# static fields
.field public static final DEFAULT_HTTPS_PORT:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92c2d

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/https/Handler;->DEFAULT_HTTPS_PORT:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljcifs/http/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultPort()I
    .registers 2

    const/16 v0, 0x1bb

    return v0
.end method
