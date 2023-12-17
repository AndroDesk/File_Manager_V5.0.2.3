.class public Lmiuix/internal/hybrid/webkit/FileChooserParams;
.super Lmiuix/hybrid/FileChooserParams;
.source "FileChooserParams.java"


# static fields
.field public static final MODE_OPEN:I = 0x0

.field public static final MODE_OPEN_FOLDER:I = 0x2

.field public static final MODE_OPEN_MULTIPLE:I = 0x1

.field public static final MODE_SAVE:I = 0x3


# instance fields
.field private final mFileChooserParams:Landroid/webkit/WebChromeClient$FileChooserParams;


# direct methods
.method public constructor <init>(Landroid/webkit/WebChromeClient$FileChooserParams;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lmiuix/hybrid/FileChooserParams;-><init>()V

    .line 4
    iput-object p1, p0, Lmiuix/internal/hybrid/webkit/FileChooserParams;->mFileChooserParams:Landroid/webkit/WebChromeClient$FileChooserParams;

    .line 6
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

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/FileChooserParams;->mFileChooserParams:Landroid/webkit/WebChromeClient$FileChooserParams;

    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebChromeClient$FileChooserParams;->createIntent()Landroid/content/Intent;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getAcceptTypes()[Ljava/lang/String;
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/FileChooserParams;->mFileChooserParams:Landroid/webkit/WebChromeClient$FileChooserParams;

    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebChromeClient$FileChooserParams;->getAcceptTypes()[Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getFilenameHint()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/FileChooserParams;->mFileChooserParams:Landroid/webkit/WebChromeClient$FileChooserParams;

    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebChromeClient$FileChooserParams;->getFilenameHint()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getMode()I
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/FileChooserParams;->mFileChooserParams:Landroid/webkit/WebChromeClient$FileChooserParams;

    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebChromeClient$FileChooserParams;->getMode()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/FileChooserParams;->mFileChooserParams:Landroid/webkit/WebChromeClient$FileChooserParams;

    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebChromeClient$FileChooserParams;->getTitle()Ljava/lang/CharSequence;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public isCaptureEnabled()Z
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/FileChooserParams;->mFileChooserParams:Landroid/webkit/WebChromeClient$FileChooserParams;

    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebChromeClient$FileChooserParams;->isCaptureEnabled()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method
