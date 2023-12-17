.class public Lcom/android/fileexplorer/model/FileFragmentHelper;
.super Ljava/lang/Object;
.source "FileFragmentHelper.java"


# static fields
.field private static final EXT_FILTER_KEY:Ljava/lang/String; = "ext_filter"


# instance fields
.field private filters:Lcom/android/fileexplorer/util/FileNameExtFilter;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getCategoryFilterStr(Landroid/content/Intent;)[Ljava/lang/String;
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "android.intent.action.RINGTONE_PICKER"

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_2b

    .line 13
    sget-object p1, Lcom/android/fileexplorer/apptag/FileConstant;->SUPPORT_AUDIO_FORMAT:[Ljava/lang/String;

    .line 15
    array-length v0, p1

    .line 16
    add-int/lit8 v0, v0, 0x3

    .line 18
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 22
    check-cast v0, [Ljava/lang/String;

    .line 24
    array-length v1, p1

    .line 25
    const-string v2, "3gp"

    .line 27
    aput-object v2, v0, v1

    .line 29
    array-length v1, p1

    .line 30
    add-int/lit8 v1, v1, 0x1

    .line 32
    const-string v2, "mp4"

    .line 34
    aput-object v2, v0, v1

    .line 36
    array-length p1, p1

    .line 37
    add-int/lit8 p1, p1, 0x2

    .line 39
    const-string v1, "mpg"

    .line 41
    aput-object v1, v0, p1

    .line 43
    return-object v0

    .line 44
    :cond_2b
    const-string v0, "android.intent.extra.MIME_TYPES"

    .line 46
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    invoke-static {v0}, Lcom/android/fileexplorer/util/MimeUtils;->guessExtensionFromMimeTypes([Ljava/lang/String;)[Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    if-eqz v0, :cond_3a

    .line 56
    array-length v1, v0

    .line 57
    if-nez v1, :cond_42

    .line 59
    :cond_3a
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 62
    move-result-object v0

    .line 63
    invoke-static {v0}, Lcom/android/fileexplorer/util/MimeUtils;->guessExtensionFromMimeType(Ljava/lang/String;)[Ljava/lang/String;

    .line 66
    move-result-object v0

    .line 67
    :cond_42
    if-eqz v0, :cond_48

    .line 69
    array-length v1, v0

    .line 70
    if-eqz v1, :cond_48

    .line 72
    return-object v0

    .line 73
    :cond_48
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 76
    move-result-object v0

    .line 77
    if-eqz v0, :cond_5a

    .line 79
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 82
    move-result-object v0

    .line 83
    const-string v1, "audio/"

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 88
    move-result v0

    .line 89
    if-nez v0, :cond_6c

    .line 91
    :cond_5a
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 94
    move-result-object v0

    .line 95
    if-eqz v0, :cond_6f

    .line 97
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 100
    move-result-object v0

    .line 101
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 103
    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 106
    move-result v0

    .line 107
    if-eqz v0, :cond_6f

    .line 109
    :cond_6c
    sget-object p1, Lcom/android/fileexplorer/apptag/FileConstant;->SUPPORT_AUDIO_FORMAT:[Ljava/lang/String;

    .line 111
    return-object p1

    .line 112
    :cond_6f
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 115
    move-result-object v0

    .line 116
    if-eqz v0, :cond_81

    .line 118
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 121
    move-result-object v0

    .line 122
    const-string v1, "video/"

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 127
    move-result v0

    .line 128
    if-nez v0, :cond_93

    .line 130
    :cond_81
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 133
    move-result-object v0

    .line 134
    if-eqz v0, :cond_96

    .line 136
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 139
    move-result-object v0

    .line 140
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 142
    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 145
    move-result v0

    .line 146
    if-eqz v0, :cond_96

    .line 148
    :cond_93
    sget-object p1, Lcom/android/fileexplorer/apptag/FileConstant;->SUPPORT_VIDEO_FORMAT:[Ljava/lang/String;

    .line 150
    return-object p1

    .line 151
    :cond_96
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 154
    move-result-object v0

    .line 155
    if-eqz v0, :cond_a8

    .line 157
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 160
    move-result-object v0

    .line 161
    const-string v1, "image/"

    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 166
    move-result v0

    .line 167
    if-nez v0, :cond_ba

    .line 169
    :cond_a8
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 172
    move-result-object v0

    .line 173
    if-eqz v0, :cond_bd

    .line 175
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 178
    move-result-object p1

    .line 179
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 181
    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 184
    move-result p1

    .line 185
    if-eqz p1, :cond_bd

    .line 187
    :cond_ba
    sget-object p1, Lcom/android/fileexplorer/apptag/FileConstant;->SUPPORT_PHOTO_FORMAT:[Ljava/lang/String;

    .line 189
    return-object p1

    .line 190
    :cond_bd
    const/4 p1, 0x0

    .line 191
    return-object p1
.end method

.method private setCustomCategory([Ljava/lang/String;)V
    .registers 4

    .line 1
    if-eqz p1, :cond_16

    .line 3
    array-length v0, p1

    .line 4
    if-nez v0, :cond_6

    .line 6
    goto :goto_16

    .line 7
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    const-string v1, "ext_filter"

    .line 13
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    new-instance v0, Lcom/android/fileexplorer/util/FileNameExtFilter;

    .line 18
    invoke-direct {v0, p1}, Lcom/android/fileexplorer/util/FileNameExtFilter;-><init>([Ljava/lang/String;)V

    .line 21
    iput-object v0, p0, Lcom/android/fileexplorer/model/FileFragmentHelper;->filters:Lcom/android/fileexplorer/util/FileNameExtFilter;

    .line 23
    :cond_16
    :goto_16
    return-void
.end method


# virtual methods
.method public getFilter()Lcom/android/fileexplorer/util/FileNameExtFilter;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/model/FileFragmentHelper;->filters:Lcom/android/fileexplorer/util/FileNameExtFilter;

    .line 3
    return-object v0
.end method

.method public init(Landroid/content/Intent;)V
    .registers 3

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    const-string v0, "ext_filter"

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_f

    .line 12
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/model/FileFragmentHelper;->getCategoryFilterStr(Landroid/content/Intent;)[Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    :cond_f
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/model/FileFragmentHelper;->setCustomCategory([Ljava/lang/String;)V

    .line 19
    return-void
.end method
