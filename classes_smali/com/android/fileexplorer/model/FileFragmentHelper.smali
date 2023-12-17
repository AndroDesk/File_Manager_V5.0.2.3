.class public Lcom/android/fileexplorer/model/FileFragmentHelper;
.super Ljava/lang/Object;
.source "FileFragmentHelper.java"


# static fields
.field private static final EXT_FILTER_KEY:Ljava/lang/String; = "ext_filter"


# instance fields
.field private filters:Lcom/android/fileexplorer/util/FileNameExtFilter;


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

.method private getCategoryFilterStr(Landroid/content/Intent;)[Ljava/lang/String;
    .registers 5

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.RINGTONE_PICKER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    sget-object p1, Lcom/android/fileexplorer/apptag/FileConstant;->SUPPORT_AUDIO_FORMAT:[Ljava/lang/String;

    array-length v0, p1

    add-int/lit8 v0, v0, 0x3

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    array-length v1, p1

    const-string v2, "3gp"

    aput-object v2, v0, v1

    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    const-string v2, "mp4"

    aput-object v2, v0, v1

    array-length p1, p1

    add-int/lit8 p1, p1, 0x2

    const-string v1, "mpg"

    aput-object v1, v0, p1

    return-object v0

    :cond_2b
    const-string v0, "android.intent.extra.MIME_TYPES"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/util/MimeUtils;->guessExtensionFromMimeTypes([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3a

    array-length v1, v0

    if-nez v1, :cond_42

    :cond_3a
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/util/MimeUtils;->guessExtensionFromMimeType(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :cond_42
    if-eqz v0, :cond_48

    array-length v1, v0

    if-eqz v1, :cond_48

    return-object v0

    :cond_48
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5a

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6c

    :cond_5a
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_6f

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    :cond_6c
    sget-object p1, Lcom/android/fileexplorer/apptag/FileConstant;->SUPPORT_AUDIO_FORMAT:[Ljava/lang/String;

    return-object p1

    :cond_6f
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_81

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_93

    :cond_81
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_96

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    :cond_93
    sget-object p1, Lcom/android/fileexplorer/apptag/FileConstant;->SUPPORT_VIDEO_FORMAT:[Ljava/lang/String;

    return-object p1

    :cond_96
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a8

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "image/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_ba

    :cond_a8
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_bd

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_bd

    :cond_ba
    sget-object p1, Lcom/android/fileexplorer/apptag/FileConstant;->SUPPORT_PHOTO_FORMAT:[Ljava/lang/String;

    return-object p1

    :cond_bd
    const/4 p1, 0x0

    return-object p1
.end method

.method private setCustomCategory([Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_16

    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_16

    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ext_filter"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/fileexplorer/util/FileNameExtFilter;

    invoke-direct {v0, p1}, Lcom/android/fileexplorer/util/FileNameExtFilter;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/fileexplorer/model/FileFragmentHelper;->filters:Lcom/android/fileexplorer/util/FileNameExtFilter;

    :cond_16
    :goto_16
    return-void
.end method


# virtual methods
.method public getFilter()Lcom/android/fileexplorer/util/FileNameExtFilter;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/model/FileFragmentHelper;->filters:Lcom/android/fileexplorer/util/FileNameExtFilter;

    return-object v0
.end method

.method public init(Landroid/content/Intent;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string v0, "ext_filter"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/model/FileFragmentHelper;->getCategoryFilterStr(Landroid/content/Intent;)[Ljava/lang/String;

    move-result-object v0

    :cond_f
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/model/FileFragmentHelper;->setCustomCategory([Ljava/lang/String;)V

    return-void
.end method
