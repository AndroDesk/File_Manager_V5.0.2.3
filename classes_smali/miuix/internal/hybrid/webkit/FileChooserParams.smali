.class public Lmiuix/internal/hybrid/webkit/FileChooserParams;
.super Lmiuix/hybrid/FileChooserParams;
.source "FileChooserParams.java"


# static fields
.field public static final MODE_OPEN:I

.field public static final MODE_OPEN_FOLDER:I

.field public static final MODE_OPEN_MULTIPLE:I

.field public static final MODE_SAVE:I


# instance fields
.field private final mFileChooserParams:Landroid/webkit/WebChromeClient$FileChooserParams;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/internal/hybrid/webkit/FileChooserParams;->MODE_OPEN:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/internal/hybrid/webkit/FileChooserParams;->MODE_OPEN_FOLDER:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/internal/hybrid/webkit/FileChooserParams;->MODE_OPEN_MULTIPLE:I

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/internal/hybrid/webkit/FileChooserParams;->MODE_SAVE:I

    return-void
.end method

.method public constructor <init>(Landroid/webkit/WebChromeClient$FileChooserParams;)V
    .registers 2

    invoke-direct {p0}, Lmiuix/hybrid/FileChooserParams;-><init>()V

    iput-object p1, p0, Lmiuix/internal/hybrid/webkit/FileChooserParams;->mFileChooserParams:Landroid/webkit/WebChromeClient$FileChooserParams;

    return-void
.end method


# virtual methods
.method public createIntent()Landroid/content/Intent;
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/FileChooserParams;->mFileChooserParams:Landroid/webkit/WebChromeClient$FileChooserParams;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient$FileChooserParams;->createIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getAcceptTypes()[Ljava/lang/String;
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/FileChooserParams;->mFileChooserParams:Landroid/webkit/WebChromeClient$FileChooserParams;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient$FileChooserParams;->getAcceptTypes()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFilenameHint()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/FileChooserParams;->mFileChooserParams:Landroid/webkit/WebChromeClient$FileChooserParams;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient$FileChooserParams;->getFilenameHint()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMode()I
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/FileChooserParams;->mFileChooserParams:Landroid/webkit/WebChromeClient$FileChooserParams;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient$FileChooserParams;->getMode()I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/FileChooserParams;->mFileChooserParams:Landroid/webkit/WebChromeClient$FileChooserParams;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient$FileChooserParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public isCaptureEnabled()Z
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/FileChooserParams;->mFileChooserParams:Landroid/webkit/WebChromeClient$FileChooserParams;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient$FileChooserParams;->isCaptureEnabled()Z

    move-result v0

    return v0
.end method
