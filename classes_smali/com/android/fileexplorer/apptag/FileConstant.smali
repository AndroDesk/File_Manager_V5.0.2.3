.class public Lcom/android/fileexplorer/apptag/FileConstant;
.super Ljava/lang/Object;
.source "FileConstant.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/apptag/FileConstant$SortMethod;,
        Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;
    }
.end annotation


# static fields
.field public static final FILE_CATEGORY_APK:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final FILE_CATEGORY_AUDIO:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final FILE_CATEGORY_DOC:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final FILE_CATEGORY_EBOOK:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final FILE_CATEGORY_PHOTO:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final FILE_CATEGORY_THEME:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final FILE_CATEGORY_VIDEO:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final FILE_CATEGORY_WECHAT_APK:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final FILE_CATEGORY_ZIP:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final FILE_FORMAT_MP4:Ljava/lang/String; = "mp4"

.field public static final FILE_ID_NO_THUMBNAIL:J = -0x1L

.field public static final FILE_NOMEDIA:Ljava/lang/String; = ".nomedia"

.field public static final FILE_OCR_STATUS_NONE:I = 0x0

.field public static final FILE_TYPE_LOOK_UP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static IGNORE_EXT_LIST:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SORT_TIME_UNLIMIT:I = -0x1

.field public static final SUPPORT_APK_FORMAT:[Ljava/lang/String;

.field public static final SUPPORT_AUDIO_FORMAT:[Ljava/lang/String;

.field private static final SUPPORT_DOC_FORMAT:[Ljava/lang/String;

.field public static final SUPPORT_FILE_FORMAT:[Ljava/lang/String;

.field public static final SUPPORT_PHOTO_FORMAT:[Ljava/lang/String;

.field public static final SUPPORT_VIDEO_FORMAT:[Ljava/lang/String;

.field private static final SUPPORT_WECHAT_APK_FORMAT:[Ljava/lang/String;

.field public static final SUPPORT_ZIP_FORMAT:[Ljava/lang/String;

.field public static final VIDEO_MTS:Ljava/lang/String; = "mts"


# direct methods
.method public static constructor <clinit>()V
    .registers 18

    const-string v0, "mp4"

    const-string v1, "wmv"

    const-string v2, "mpeg"

    const-string v3, "m4v"

    const-string v4, "3gp"

    const-string v5, "3g2"

    const-string v6, "3gpp2"

    const-string v7, "asf"

    const-string v8, "flv"

    const-string v9, "mkv"

    const-string v10, "vob"

    const-string v11, "ts"

    const-string v12, "f4v"

    const-string v13, "rm"

    const-string v14, "mov"

    const-string v15, "rmvb"

    const-string v16, "movie"

    const-string v17, "dv"

    filled-new-array/range {v0 .. v17}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/fileexplorer/apptag/FileConstant;->SUPPORT_VIDEO_FORMAT:[Ljava/lang/String;

    const-string v1, "mp3"

    const-string v2, "wma"

    const-string v3, "wav"

    const-string v4, "aac"

    const-string v5, "ape"

    const-string v6, "flac"

    const-string v7, "m4a"

    const-string v8, "ogg"

    const-string v9, "mid"

    const-string v10, "amr"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/fileexplorer/apptag/FileConstant;->SUPPORT_AUDIO_FORMAT:[Ljava/lang/String;

    const-string v2, "apk"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/fileexplorer/apptag/FileConstant;->SUPPORT_APK_FORMAT:[Ljava/lang/String;

    const-string v3, "1"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/fileexplorer/apptag/FileConstant;->SUPPORT_WECHAT_APK_FORMAT:[Ljava/lang/String;

    const-string v4, "doc"

    const-string v5, "docx"

    const-string v6, "wps"

    const-string v7, "xls"

    const-string v8, "xlsx"

    const-string v9, "et"

    const-string v10, "ett"

    const-string v11, "ppt"

    const-string v12, "pptx"

    const-string v13, "pps"

    const-string v14, "ppsx"

    const-string v15, "dps"

    const-string v16, "rtf"

    const-string v17, "pdf"

    filled-new-array/range {v4 .. v17}, [Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/fileexplorer/apptag/FileConstant;->SUPPORT_DOC_FORMAT:[Ljava/lang/String;

    const-string v5, "jpg"

    const-string v6, "jpeg"

    const-string v7, "gif"

    const-string v8, "png"

    const-string v9, "bmp"

    const-string v10, "wbmp"

    const-string v11, "webp"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/fileexplorer/apptag/FileConstant;->SUPPORT_PHOTO_FORMAT:[Ljava/lang/String;

    const-string v6, "zip"

    const-string v7, "rar"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/fileexplorer/apptag/FileConstant;->SUPPORT_ZIP_FORMAT:[Ljava/lang/String;

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    sput-object v7, Lcom/android/fileexplorer/apptag/FileConstant;->FILE_CATEGORY_VIDEO:Ljava/util/HashSet;

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    sput-object v7, Lcom/android/fileexplorer/apptag/FileConstant;->FILE_CATEGORY_AUDIO:Ljava/util/HashSet;

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    sput-object v7, Lcom/android/fileexplorer/apptag/FileConstant;->FILE_CATEGORY_APK:Ljava/util/HashSet;

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    sput-object v7, Lcom/android/fileexplorer/apptag/FileConstant;->FILE_CATEGORY_WECHAT_APK:Ljava/util/HashSet;

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    sput-object v7, Lcom/android/fileexplorer/apptag/FileConstant;->FILE_CATEGORY_DOC:Ljava/util/HashSet;

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    sput-object v7, Lcom/android/fileexplorer/apptag/FileConstant;->FILE_CATEGORY_PHOTO:Ljava/util/HashSet;

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    sput-object v7, Lcom/android/fileexplorer/apptag/FileConstant;->FILE_CATEGORY_EBOOK:Ljava/util/HashSet;

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    sput-object v7, Lcom/android/fileexplorer/apptag/FileConstant;->FILE_CATEGORY_ZIP:Ljava/util/HashSet;

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    sput-object v7, Lcom/android/fileexplorer/apptag/FileConstant;->FILE_CATEGORY_THEME:Ljava/util/HashSet;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    sput-object v7, Lcom/android/fileexplorer/apptag/FileConstant;->FILE_TYPE_LOOK_UP:Ljava/util/HashMap;

    array-length v7, v0

    array-length v2, v2

    add-int/2addr v7, v2

    array-length v1, v1

    add-int/2addr v7, v1

    array-length v1, v4

    add-int/2addr v7, v1

    array-length v1, v5

    add-int/2addr v7, v1

    array-length v1, v6

    add-int/2addr v7, v1

    array-length v1, v3

    add-int/2addr v7, v1

    new-array v1, v7, [Ljava/lang/String;

    sput-object v1, Lcom/android/fileexplorer/apptag/FileConstant;->SUPPORT_FILE_FORMAT:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_ef
    if-ge v3, v1, :cond_102

    aget-object v5, v0, v3

    sget-object v6, Lcom/android/fileexplorer/apptag/FileConstant;->SUPPORT_FILE_FORMAT:[Ljava/lang/String;

    add-int/lit8 v7, v4, 0x1

    aput-object v5, v6, v4

    sget-object v4, Lcom/android/fileexplorer/apptag/FileConstant;->FILE_CATEGORY_VIDEO:Ljava/util/HashSet;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    move v4, v7

    goto :goto_ef

    :cond_102
    sget-object v0, Lcom/android/fileexplorer/apptag/FileConstant;->SUPPORT_AUDIO_FORMAT:[Ljava/lang/String;

    array-length v1, v0

    move v3, v2

    :goto_106
    if-ge v3, v1, :cond_119

    aget-object v5, v0, v3

    sget-object v6, Lcom/android/fileexplorer/apptag/FileConstant;->SUPPORT_FILE_FORMAT:[Ljava/lang/String;

    add-int/lit8 v7, v4, 0x1

    aput-object v5, v6, v4

    sget-object v4, Lcom/android/fileexplorer/apptag/FileConstant;->FILE_CATEGORY_AUDIO:Ljava/util/HashSet;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    move v4, v7

    goto :goto_106

    :cond_119
    sget-object v0, Lcom/android/fileexplorer/apptag/FileConstant;->SUPPORT_APK_FORMAT:[Ljava/lang/String;

    array-length v1, v0

    move v3, v2

    :goto_11d
    if-ge v3, v1, :cond_130

    aget-object v5, v0, v3

    sget-object v6, Lcom/android/fileexplorer/apptag/FileConstant;->SUPPORT_FILE_FORMAT:[Ljava/lang/String;

    add-int/lit8 v7, v4, 0x1

    aput-object v5, v6, v4

    sget-object v4, Lcom/android/fileexplorer/apptag/FileConstant;->FILE_CATEGORY_APK:Ljava/util/HashSet;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    move v4, v7

    goto :goto_11d

    :cond_130
    sget-object v0, Lcom/android/fileexplorer/apptag/FileConstant;->SUPPORT_DOC_FORMAT:[Ljava/lang/String;

    array-length v1, v0

    move v3, v2

    :goto_134
    if-ge v3, v1, :cond_147

    aget-object v5, v0, v3

    sget-object v6, Lcom/android/fileexplorer/apptag/FileConstant;->SUPPORT_FILE_FORMAT:[Ljava/lang/String;

    add-int/lit8 v7, v4, 0x1

    aput-object v5, v6, v4

    sget-object v4, Lcom/android/fileexplorer/apptag/FileConstant;->FILE_CATEGORY_DOC:Ljava/util/HashSet;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    move v4, v7

    goto :goto_134

    :cond_147
    sget-object v0, Lcom/android/fileexplorer/apptag/FileConstant;->SUPPORT_PHOTO_FORMAT:[Ljava/lang/String;

    array-length v1, v0

    move v3, v2

    :goto_14b
    if-ge v3, v1, :cond_15e

    aget-object v5, v0, v3

    sget-object v6, Lcom/android/fileexplorer/apptag/FileConstant;->SUPPORT_FILE_FORMAT:[Ljava/lang/String;

    add-int/lit8 v7, v4, 0x1

    aput-object v5, v6, v4

    sget-object v4, Lcom/android/fileexplorer/apptag/FileConstant;->FILE_CATEGORY_PHOTO:Ljava/util/HashSet;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    move v4, v7

    goto :goto_14b

    :cond_15e
    sget-object v0, Lcom/android/fileexplorer/apptag/FileConstant;->SUPPORT_ZIP_FORMAT:[Ljava/lang/String;

    array-length v1, v0

    move v3, v2

    :goto_162
    if-ge v3, v1, :cond_175

    aget-object v5, v0, v3

    sget-object v6, Lcom/android/fileexplorer/apptag/FileConstant;->SUPPORT_FILE_FORMAT:[Ljava/lang/String;

    add-int/lit8 v7, v4, 0x1

    aput-object v5, v6, v4

    sget-object v4, Lcom/android/fileexplorer/apptag/FileConstant;->FILE_CATEGORY_ZIP:Ljava/util/HashSet;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    move v4, v7

    goto :goto_162

    :cond_175
    sget-object v0, Lcom/android/fileexplorer/apptag/FileConstant;->SUPPORT_WECHAT_APK_FORMAT:[Ljava/lang/String;

    array-length v1, v0

    :goto_178
    if-ge v2, v1, :cond_18b

    aget-object v3, v0, v2

    sget-object v5, Lcom/android/fileexplorer/apptag/FileConstant;->SUPPORT_FILE_FORMAT:[Ljava/lang/String;

    add-int/lit8 v6, v4, 0x1

    aput-object v3, v5, v4

    sget-object v4, Lcom/android/fileexplorer/apptag/FileConstant;->FILE_CATEGORY_WECHAT_APK:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    move v4, v6

    goto :goto_178

    :cond_18b
    sget-object v0, Lcom/android/fileexplorer/apptag/FileConstant;->FILE_TYPE_LOOK_UP:Ljava/util/HashMap;

    const v1, 0x7f1103b1

    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Picture:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f1103b2

    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Video:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f1103ae

    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Apk:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f1103af

    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Doc:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f1103b0

    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Music:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/fileexplorer/apptag/FileConstant;->IGNORE_EXT_LIST:Ljava/util/List;

    const-string v1, "log"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/fileexplorer/apptag/FileConstant;->IGNORE_EXT_LIST:Ljava/util/List;

    const-string v1, "txt"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
