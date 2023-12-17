.class public Lcom/android/fileexplorer/util/AESUtils$Base64Utils;
.super Ljava/lang/Object;
.source "AESUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/util/AESUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Base64Utils"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .registers 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x2

    .line 6
    invoke-static {p0, v0}, Landroid/util/Base64;->decode([BI)[B

    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static encode([B)Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {p0, v1}, Landroid/util/Base64;->encode([BI)[B

    .line 7
    move-result-object p0

    .line 8
    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    .line 11
    return-object v0
.end method
