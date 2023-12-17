.class public Lcom/android/fileexplorer/encryption/PrivateFileOpenUtil$OpenDecryptionResult;
.super Ljava/lang/Object;
.source "PrivateFileOpenUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/encryption/PrivateFileOpenUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OpenDecryptionResult"
.end annotation


# instance fields
.field public errorCode:I

.field public ext:Ljava/lang/String;

.field public filePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x4

    .line 5
    iput v0, p0, Lcom/android/fileexplorer/encryption/PrivateFileOpenUtil$OpenDecryptionResult;->errorCode:I

    .line 7
    return-void
.end method
