.class public Lcom/android/fileexplorer/util/WpsSupportUtil;
.super Ljava/lang/Object;
.source "WpsSupportUtil.java"


# static fields
.field private static final DOC:[Ljava/lang/String;

.field private static final DOCX:[Ljava/lang/String;

.field private static final HTML:[Ljava/lang/String;

.field public static final PACKAGE_NAME:Ljava/lang/String; = "wpsPackageName"

.field private static final PDF:[Ljava/lang/String;

.field private static final PPT:[Ljava/lang/String;

.field private static final PPTX:[Ljava/lang/String;

.field public static final PREVIEW:Ljava/lang/String; = "wpsIsPreview"

.field private static final RTF:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "WpsSupportUtil"

.field private static final TXT:[Ljava/lang/String;

.field public static final WPS_APP_MI_NAME:Ljava/lang/String;

.field public static final WPS_APP_NAME:Ljava/lang/String; = "cn.wps.moffice_eng"

.field public static final WPS_MINIMUM_VERSION:I = 0x1fe

.field private static final XLS:[Ljava/lang/String;

.field private static final XLSX:[Ljava/lang/String;

.field private static final sWpsSupportType:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    .line 1
    sget-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL:Z

    .line 3
    if-eqz v0, :cond_7

    .line 5
    const-string v0, "cn.wps.xiaomi.abroad.lite"

    .line 7
    goto :goto_9

    .line 8
    :cond_7
    const-string v0, "cn.wps.moffice_eng.xiaomi.lite"

    .line 10
    :goto_9
    sput-object v0, Lcom/android/fileexplorer/util/WpsSupportUtil;->WPS_APP_MI_NAME:Ljava/lang/String;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    sput-object v0, Lcom/android/fileexplorer/util/WpsSupportUtil;->sWpsSupportType:Ljava/util/List;

    .line 19
    const-string v0, "wps"

    .line 21
    const-string v1, "wpt"

    .line 23
    const-string v2, "doc"

    .line 25
    const-string v3, "dot"

    .line 27
    const-string v4, "wpss"

    .line 29
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lcom/android/fileexplorer/util/WpsSupportUtil;->DOC:[Ljava/lang/String;

    .line 35
    const-string v0, "docx"

    .line 37
    const-string v1, "dotx"

    .line 39
    const-string v2, "docm"

    .line 41
    const-string v3, "dotm"

    .line 43
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 47
    sput-object v0, Lcom/android/fileexplorer/util/WpsSupportUtil;->DOCX:[Ljava/lang/String;

    .line 49
    const-string v1, "et"

    .line 51
    const-string v2, "ett"

    .line 53
    const-string v3, "xls"

    .line 55
    const-string v4, "xlt"

    .line 57
    const-string v5, "csv"

    .line 59
    const-string v6, "ets"

    .line 61
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    .line 64
    move-result-object v0

    .line 65
    sput-object v0, Lcom/android/fileexplorer/util/WpsSupportUtil;->XLS:[Ljava/lang/String;

    .line 67
    const-string v0, "xlsx"

    .line 69
    const-string v1, "xltx"

    .line 71
    const-string v2, "xlsm"

    .line 73
    const-string v3, "xltm"

    .line 75
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    .line 78
    move-result-object v0

    .line 79
    sput-object v0, Lcom/android/fileexplorer/util/WpsSupportUtil;->XLSX:[Ljava/lang/String;

    .line 81
    const-string v1, "dps"

    .line 83
    const-string v2, "dpt"

    .line 85
    const-string v3, "ppt"

    .line 87
    const-string v4, "pot"

    .line 89
    const-string v5, "pps"

    .line 91
    const-string v6, "dpss"

    .line 93
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    .line 96
    move-result-object v0

    .line 97
    sput-object v0, Lcom/android/fileexplorer/util/WpsSupportUtil;->PPT:[Ljava/lang/String;

    .line 99
    const-string v0, "pptx"

    .line 101
    const-string v1, "potx"

    .line 103
    const-string v2, "ppsx"

    .line 105
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    .line 108
    move-result-object v0

    .line 109
    sput-object v0, Lcom/android/fileexplorer/util/WpsSupportUtil;->PPTX:[Ljava/lang/String;

    .line 111
    const-string v0, "pdf"

    .line 113
    filled-new-array {v0}, [Ljava/lang/String;

    .line 116
    move-result-object v0

    .line 117
    sput-object v0, Lcom/android/fileexplorer/util/WpsSupportUtil;->PDF:[Ljava/lang/String;

    .line 119
    const-string v0, "txt"

    .line 121
    const-string v1, "log"

    .line 123
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 126
    move-result-object v0

    .line 127
    sput-object v0, Lcom/android/fileexplorer/util/WpsSupportUtil;->TXT:[Ljava/lang/String;

    .line 129
    const-string v0, "htm"

    .line 131
    const-string v1, "html"

    .line 133
    const-string v2, "mht"

    .line 135
    const-string v3, "enml"

    .line 137
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    .line 140
    move-result-object v0

    .line 141
    sput-object v0, Lcom/android/fileexplorer/util/WpsSupportUtil;->HTML:[Ljava/lang/String;

    .line 143
    const-string v0, "rtf"

    .line 145
    filled-new-array {v0}, [Ljava/lang/String;

    .line 148
    move-result-object v0

    .line 149
    sput-object v0, Lcom/android/fileexplorer/util/WpsSupportUtil;->RTF:[Ljava/lang/String;

    .line 151
    invoke-static {}, Lcom/android/fileexplorer/util/WpsSupportUtil;->addWpsSupportType()V

    .line 154
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addWpsSupportType()V
    .registers 2

    .line 1
    sget-object v0, Lcom/android/fileexplorer/util/WpsSupportUtil;->sWpsSupportType:Ljava/util/List;

    .line 3
    const-string v1, "doc"

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    const-string v1, "docx"

    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    const-string v1, "txt"

    .line 15
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    const-string v1, "wps"

    .line 20
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    const-string v1, "wpss"

    .line 25
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    const-string v1, "wpt"

    .line 30
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    const-string v1, "dot"

    .line 35
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    const-string v1, "dotx"

    .line 40
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    const-string v1, "docm"

    .line 45
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    const-string v1, "dotm"

    .line 50
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    const-string v1, "rtf"

    .line 55
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    const-string v1, "md"

    .line 60
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    const-string v1, "ppt"

    .line 65
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    const-string v1, "pptx"

    .line 70
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    const-string v1, "dps"

    .line 75
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    const-string v1, "dpss"

    .line 80
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    const-string v1, "pot"

    .line 85
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    const-string v1, "pps"

    .line 90
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    const-string v1, "potx"

    .line 95
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    const-string v1, "ppsx"

    .line 100
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    const-string v1, "dpt"

    .line 105
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    const-string v1, "pptm"

    .line 110
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    const-string v1, "potm"

    .line 115
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    const-string v1, "ppsm"

    .line 120
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    const-string v1, "xls"

    .line 125
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    const-string v1, "xlsx"

    .line 130
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    const-string v1, "xlsm"

    .line 135
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    const-string v1, "csv"

    .line 140
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    const-string v1, "et"

    .line 145
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    const-string v1, "ett"

    .line 150
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    const-string v1, "xlt"

    .line 155
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    const-string v1, "xltx"

    .line 160
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    const-string v1, "xltm"

    .line 165
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    const-string v1, "html"

    .line 170
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    const-string v1, "htm"

    .line 175
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    const-string v1, "xlsb"

    .line 180
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    const-string v1, "mht"

    .line 185
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    const-string v1, "enml"

    .line 190
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    const-string v1, "xml"

    .line 195
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    const-string v1, "etc"

    .line 200
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    const-string v1, "pdf"

    .line 205
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    const-string v1, "log"

    .line 210
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    const-string v1, "c"

    .line 215
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    const-string v1, "cpp"

    .line 220
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    const-string v1, "h"

    .line 225
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    const-string v1, "java"

    .line 230
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    const-string v1, "asp"

    .line 235
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    const-string v1, "bat"

    .line 240
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    const-string v1, "mhtml"

    .line 245
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    return-void
.end method

.method public static checkIfWpsSupportFileType(Ljava/lang/String;)Z
    .registers 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_8

    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_8
    sget-object v0, Lcom/android/fileexplorer/util/WpsSupportUtil;->sWpsSupportType:Ljava/util/List;

    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 15
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public static isWPSSupport()Z
    .registers 3

    .line 1
    sget-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    :try_start_6
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 14
    move-result-object v0

    .line 15
    const-string v2, "cn.wps.moffice_eng"

    .line 17
    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_35

    .line 23
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_18
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_18} :catch_1e

    .line 25
    const/16 v2, 0x1fe

    .line 27
    if-lt v0, v2, :cond_1d

    .line 29
    const/4 v1, 0x1

    .line 30
    :cond_1d
    return v1

    .line 31
    :catch_1e
    move-exception v0

    .line 32
    const-string v2, "isWPSSupport error: "

    .line 34
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 49
    const-string v2, "WpsSupportUtil"

    .line 51
    invoke-static {v2, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_35
    return v1
.end method
