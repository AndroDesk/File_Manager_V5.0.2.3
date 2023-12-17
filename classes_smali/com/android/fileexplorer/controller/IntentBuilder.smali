.class public Lcom/android/fileexplorer/controller/IntentBuilder;
.super Ljava/lang/Object;
.source "IntentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/controller/IntentBuilder$ViewFileCallback;
    }
.end annotation


# static fields
.field private static final ACTION_LAUNCH_HUANJI:Ljava/lang/String; = "com.intent.action.Huanji"

.field private static final EXTRA_REQUEST_FROM:Ljava/lang/String; = "request_from"

.field private static final FROM_APPLICATION_TYPE_FILEEXPLORER:I = 0x1

.field private static final PKG_FILE_EXPLORER:Ljava/lang/String; = "com.android.fileexplorer"

.field private static final PKG_GOOGLE_PLAY:Ljava/lang/String; = "com.android.vending"

.field private static final PKG_HUANJI:Ljava/lang/String; = "com.miui.huanji"

.field private static final PKG_XIAOMI_MARKET:Ljava/lang/String; = "com.xiaomi.market"

.field private static final SCHEMAURL:Ljava/lang/String; = "market://details?id="

.field private static final SCHEMAURL_GOOGLE_PLAY:Ljava/lang/String; = "https://play.google.com/store/apps/details?id="

.field private static final TAG:Ljava/lang/String; = "IntentBuilder"

.field public static mTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/AsyncTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    sput-object v0, Lcom/android/fileexplorer/controller/IntentBuilder;->mTasks:Ljava/util/ArrayList;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;Ljava/lang/String;JLandroid/content/DialogInterface;I)V
    .registers 7

    invoke-static/range {p0 .. p6}, Lcom/android/fileexplorer/controller/IntentBuilder;->lambda$viewCloudVideo$0(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;Ljava/lang/String;JLandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic access$000(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/android/fileexplorer/controller/IntentBuilder;->viewCloudVideoFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public static synthetic access$100(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lcom/android/fileexplorer/controller/IntentBuilder;->buildViewIntent(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$1000(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/android/fileexplorer/controller/IntentBuilder;->viewVideoFile(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4
    return-void
.end method

.method public static synthetic access$1100(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lcom/android/fileexplorer/controller/IntentBuilder;->viewAudioFile(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public static synthetic access$1200(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lcom/android/fileexplorer/controller/IntentBuilder;->startResolverActivity(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public static synthetic access$1300(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/android/fileexplorer/controller/IntentBuilder;->startResolverActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 4
    return-void
.end method

.method public static synthetic access$1400(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lcom/android/fileexplorer/controller/IntentBuilder;->startNoMime(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Landroid/net/Uri;Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public static synthetic access$200(Landroid/content/Intent;)Z
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/android/fileexplorer/controller/IntentBuilder;->hasDefaultResolvable(Landroid/content/Intent;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$300(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lcom/android/fileexplorer/controller/IntentBuilder;->startViewIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lcom/android/fileexplorer/controller/IntentBuilder;->viewArchive(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public static synthetic access$500(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/android/fileexplorer/controller/IntentBuilder;->grantWpsWritePermissionIfNeed(Landroid/content/Context;Landroid/content/Intent;)V

    .line 4
    return-void
.end method

.method public static synthetic access$600(Landroid/app/Activity;Landroid/content/Intent;)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/android/fileexplorer/controller/IntentBuilder;->startWithWPS(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 4
    return-void
.end method

.method public static synthetic access$700(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/android/fileexplorer/controller/IntentBuilder;->startViewIntent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 4
    return-void
.end method

.method public static synthetic access$800(Landroid/content/Intent;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/android/fileexplorer/controller/IntentBuilder;->getDefaultResolvable(Landroid/content/Intent;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$900(Ljava/lang/String;)Z
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/android/fileexplorer/controller/IntentBuilder;->hasDefaultResolvable(Ljava/lang/String;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static buildSendFile(Ljava/util/List;)Landroid/content/Intent;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object p0

    .line 15
    const-string v1, ""

    .line 17
    :cond_10
    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v2

    .line 21
    const/4 v3, 0x0

    .line 22
    const/4 v4, 0x1

    .line 23
    if-eqz v2, :cond_89

    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/android/fileexplorer/model/FileInfo;

    .line 31
    if-eqz v2, :cond_10

    .line 33
    iget-boolean v5, v2, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 35
    if-eqz v5, :cond_25

    .line 37
    goto :goto_10

    .line 38
    :cond_25
    new-instance v5, Ljava/io/File;

    .line 40
    iget-object v6, v2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 42
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    iget-object v6, v2, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 47
    invoke-static {v6}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    move-result-object v6

    .line 51
    iget-object v7, v2, Lcom/android/fileexplorer/model/FileInfo;->suffix:Ljava/lang/String;

    .line 53
    if-eqz v7, :cond_3e

    .line 55
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 58
    move-result v7

    .line 59
    if-eqz v7, :cond_3e

    .line 61
    iget-object v6, v2, Lcom/android/fileexplorer/model/FileInfo;->suffix:Ljava/lang/String;

    .line 63
    :cond_3e
    invoke-static {v6}, Lcom/android/fileexplorer/util/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    move-result-object v6

    .line 67
    const-string v7, "*/*"

    .line 69
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    move-result v8

    .line 73
    if-eqz v8, :cond_50

    .line 75
    iget-object v2, v2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 77
    invoke-static {v2}, Lcom/android/fileexplorer/util/MimeUtils;->getMimeTypeFromMediaDatabase(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    move-result-object v6

    .line 81
    :cond_50
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 84
    move-result v2

    .line 85
    if-eqz v2, :cond_58

    .line 87
    move-object v1, v6

    .line 88
    goto :goto_76

    .line 89
    :cond_58
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    move-result v2

    .line 93
    if-nez v2, :cond_76

    .line 95
    const-string v2, "/"

    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 100
    move-result v2

    .line 101
    add-int/2addr v2, v4

    .line 102
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v6, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 109
    move-result v2

    .line 110
    if-eqz v2, :cond_75

    .line 112
    const-string v2, "*"

    .line 114
    invoke-static {v1, v2}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    move-result-object v7

    .line 118
    :cond_75
    move-object v1, v7

    .line 119
    :cond_76
    :goto_76
    invoke-static {}, Lcom/android/fileexplorer/util/AppUtils;->isAndroid24AndLater()Z

    .line 122
    move-result v2

    .line 123
    if-eqz v2, :cond_81

    .line 125
    invoke-static {v5}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->getUriByFileProvider(Ljava/io/File;)Landroid/net/Uri;

    .line 128
    move-result-object v2

    .line 129
    goto :goto_85

    .line 130
    :cond_81
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 133
    move-result-object v2

    .line 134
    :goto_85
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    goto :goto_10

    .line 138
    :cond_89
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 141
    move-result p0

    .line 142
    if-eqz p0, :cond_91

    .line 144
    const/4 p0, 0x0

    .line 145
    return-object p0

    .line 146
    :cond_91
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 149
    move-result p0

    .line 150
    if-le p0, v4, :cond_99

    .line 152
    move p0, v4

    .line 153
    goto :goto_9a

    .line 154
    :cond_99
    move p0, v3

    .line 155
    :goto_9a
    new-instance v2, Landroid/content/Intent;

    .line 157
    if-eqz p0, :cond_a1

    .line 159
    const-string v5, "android.intent.action.SEND_MULTIPLE"

    .line 161
    goto :goto_a3

    .line 162
    :cond_a1
    const-string v5, "android.intent.action.SEND"

    .line 164
    :goto_a3
    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 170
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    const-string v1, "android.intent.extra.STREAM"

    .line 175
    if-eqz p0, :cond_b4

    .line 177
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 180
    goto :goto_bd

    .line 181
    :cond_b4
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 184
    move-result-object p0

    .line 185
    check-cast p0, Landroid/os/Parcelable;

    .line 187
    invoke-virtual {v2, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 190
    :goto_bd
    return-object v2
.end method

.method private static buildViewIntent(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .registers 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string v1, "android.intent.action.VIEW"

    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 12
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    if-eqz p2, :cond_13

    .line 17
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 20
    :cond_13
    return-object v0
.end method

.method public static checkAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1c

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_a

    .line 10
    goto :goto_1c

    .line 11
    :cond_a
    :try_start_a
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 18
    move-result-object p0
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_12} :catch_13

    .line 19
    goto :goto_19

    .line 20
    :catch_13
    move-exception p0

    .line 21
    const/4 p1, 0x0

    .line 22
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    move-object p0, p1

    .line 26
    :goto_19
    if-eqz p0, :cond_1c

    .line 28
    const/4 v0, 0x1

    .line 29
    :cond_1c
    :goto_1c
    return v0
.end method

.method public static clearCurrentOpenOper(Landroid/content/Intent;)V
    .registers 4

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 12
    move-result-object v0

    .line 13
    const/high16 v1, 0x10000

    .line 15
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 18
    move-result-object p0

    .line 19
    if-eqz p0, :cond_1b

    .line 21
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 23
    if-eqz p0, :cond_1b

    .line 25
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 27
    goto :goto_1d

    .line 28
    :cond_1b
    const-string p0, ""

    .line 30
    :goto_1d
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    const-string v2, "default pkg:"

    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 47
    const-string v2, "IntentBuilder"

    .line 49
    invoke-static {v2, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_3a

    .line 58
    return-void

    .line 59
    :cond_3a
    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public static clearTasks()V
    .registers 3

    .line 1
    sget-object v0, Lcom/android/fileexplorer/controller/IntentBuilder;->mTasks:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_19

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/os/AsyncTask;

    .line 19
    if-eqz v1, :cond_6

    .line 21
    const/4 v2, 0x1

    .line 22
    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 25
    goto :goto_6

    .line 26
    :cond_19
    sget-object v0, Lcom/android/fileexplorer/controller/IntentBuilder;->mTasks:Ljava/util/ArrayList;

    .line 28
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 31
    return-void
.end method

.method private static getCacheFilePath(Landroid/content/Context;Ljcifs/smb/SmbFile;)Ljava/io/File;
    .registers 4

    .line 1
    invoke-static {p0}, Lcom/android/fileexplorer/controller/IntentBuilder;->getTmpDir(Landroid/content/Context;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->getParent()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x6

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 25
    const/4 v0, 0x1

    .line 26
    invoke-static {p0, v0}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->createFolder(Ljava/lang/String;Z)Z

    .line 29
    new-instance v0, Ljava/io/File;

    .line 31
    invoke-static {p0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->getName()Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p0

    .line 46
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    return-object v0
.end method

.method private static getDefaultResolvable(Landroid/content/Intent;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 12
    move-result-object v0

    .line 13
    const/high16 v1, 0x10000

    .line 15
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 18
    move-result-object p0

    .line 19
    if-eqz p0, :cond_1b

    .line 21
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 23
    if-eqz p0, :cond_1b

    .line 25
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 27
    return-object p0

    .line 28
    :cond_1b
    const-string p0, ""

    .line 30
    return-object p0
.end method

.method private static getGalleryVersionCode()I
    .registers 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 12
    move-result-object v0

    .line 13
    const-string v1, "com.miui.gallery"

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 19
    move-result-object v0

    .line 20
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    .line 22
    return v0

    .line 23
    :catch_16
    move-exception v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    const/4 v0, 0x1

    .line 28
    return v0
.end method

.method public static getTmpDir(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_1c

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    const-string p0, "/tmp/"

    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 28
    goto :goto_1e

    .line 29
    :cond_1c
    const-string p0, "sdcard/FileExplorer/tmp/"

    .line 31
    :goto_1e
    return-object p0
.end method

.method private static grantWpsWritePermissionIfNeed(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/AppUtils;->isAndroid30AndLater()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    const/16 v0, 0x43

    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 13
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 16
    move-result-object p1

    .line 17
    const-string v1, "cn.wps.moffice_eng"

    .line 19
    invoke-virtual {p0, v1, p1, v0}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 22
    return-void
.end method

.method private static hasDefaultResolvable(Landroid/content/Intent;)Z
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x10000

    .line 2
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_24

    .line 3
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz p0, :cond_24

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v0, "android"

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_24

    const/4 p0, 0x1

    goto :goto_25

    :cond_24
    const/4 p0, 0x0

    :goto_25
    return p0
.end method

.method private static hasDefaultResolvable(Ljava/lang/String;)Z
    .registers 2

    .line 5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    const-string v0, "android"

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static isAudioFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 1
    const-string v0, "audio/"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 6
    move-result p0

    .line 7
    if-nez p0, :cond_1d

    .line 9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result p0

    .line 13
    if-nez p0, :cond_1b

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 18
    move-result-object p0

    .line 19
    const-string p1, "flac/ogg"

    .line 21
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_1b

    .line 27
    goto :goto_1d

    .line 28
    :cond_1b
    const/4 p0, 0x0

    .line 29
    goto :goto_1e

    .line 30
    :cond_1d
    :goto_1d
    const/4 p0, 0x1

    .line 31
    :goto_1e
    return p0
.end method

.method private static isIndiaROM()Z
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    const-string v1, "android.os.SystemProperties"

    .line 4
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 7
    move-result-object v1

    .line 8
    const-string v2, "get"

    .line 10
    const/4 v3, 0x1

    .line 11
    new-array v4, v3, [Ljava/lang/Class;

    .line 13
    const-class v5, Ljava/lang/String;

    .line 15
    aput-object v5, v4, v0

    .line 17
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 20
    move-result-object v2

    .line 21
    const-string v4, "in"

    .line 23
    new-array v3, v3, [Ljava/lang/Object;

    .line 25
    const-string v5, "ro.miui.build.region"

    .line 27
    aput-object v5, v3, v0

    .line 29
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Ljava/lang/String;

    .line 35
    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 38
    move-result v0
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_26} :catch_27

    .line 39
    return v0

    .line 40
    :catch_27
    move-exception v1

    .line 41
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 44
    return v0
.end method

.method public static isIntentResolvable(Landroid/content/Intent;)Z
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_16

    .line 16
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 19
    move-result p0

    .line 20
    if-nez p0, :cond_16

    .line 22
    const/4 v1, 0x1

    .line 23
    :cond_16
    return v1
.end method

.method private static synthetic lambda$viewCloudVideo$0(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;Ljava/lang/String;JLandroid/content/DialogInterface;I)V
    .registers 13

    .line 1
    const/4 v3, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move-wide v4, p3

    .line 6
    invoke-static/range {v0 .. v5}, Lcom/android/fileexplorer/controller/IntentBuilder;->viewCloudVideo(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;Ljava/lang/String;ZJ)V

    .line 9
    return-void
.end method

.method private static needOpenWithDuoKan(JLjava/lang/String;)Z
    .registers 7

    .line 1
    const-string v0, "IntentBuilder"

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    const-string v3, "needOpenWithDuoKan: fileSize = "

    .line 11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 21
    invoke-static {v0, v2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const-wide/32 v2, 0xc800

    .line 27
    cmp-long p0, p0, v2

    .line 29
    if-lez p0, :cond_2c

    .line 31
    const-string p0, "UTF-8"

    .line 33
    invoke-virtual {p2, p0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 36
    move-result-object p0

    .line 37
    array-length p0, p0

    .line 38
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 41
    move-result p1
    :try_end_29
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_29} :catch_2d

    .line 42
    if-le p0, p1, :cond_2c

    .line 44
    const/4 v1, 0x1

    .line 45
    :cond_2c
    return v1

    .line 46
    :catch_2d
    move-exception p0

    .line 47
    const-string p1, "needOpenWithDuoKan error: "

    .line 49
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object p0

    .line 64
    invoke-static {v0, p0}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return v1
.end method

.method public static prepareViewImageLists(Ljava/util/List;Ljava/util/List;Lcom/android/fileexplorer/model/FileWithExt;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileWithExt;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileWithExt;",
            ">;",
            "Lcom/android/fileexplorer/model/FileWithExt;",
            ")I"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    :cond_5
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_64

    .line 12
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/android/fileexplorer/model/FileWithExt;

    .line 18
    if-eqz v1, :cond_5

    .line 20
    invoke-virtual {v1}, Lcom/android/fileexplorer/model/FileWithExt;->getFilePath()Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_1e

    .line 30
    goto :goto_5

    .line 31
    :cond_1e
    invoke-virtual {p2}, Lcom/android/fileexplorer/model/FileWithExt;->getFilePath()Ljava/lang/String;

    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v1}, Lcom/android/fileexplorer/model/FileWithExt;->getFilePath()Ljava/lang/String;

    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_34

    .line 45
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 48
    move-result v0

    .line 49
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    goto :goto_5

    .line 53
    :cond_34
    invoke-virtual {v1}, Lcom/android/fileexplorer/model/FileWithExt;->getFilePath()Ljava/lang/String;

    .line 56
    move-result-object v2

    .line 57
    invoke-static {v2}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getRealName(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    move-result-object v2

    .line 61
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_43

    .line 67
    goto :goto_5

    .line 68
    :cond_43
    invoke-static {v2}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    move-result-object v2

    .line 72
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 75
    move-result v3

    .line 76
    if-eqz v3, :cond_4e

    .line 78
    goto :goto_5

    .line 79
    :cond_4e
    invoke-static {v2}, Lcom/android/fileexplorer/util/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    move-result-object v2

    .line 83
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 86
    move-result v3

    .line 87
    if-nez v3, :cond_5

    .line 89
    const-string v3, "image/"

    .line 91
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 94
    move-result v2

    .line 95
    if-eqz v2, :cond_5

    .line 97
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    goto :goto_5

    .line 101
    :cond_64
    return v0
.end method

.method public static startMiMover(Landroid/content/Context;)V
    .registers 7

    .line 1
    const-string v0, "com.miui.huanji"

    .line 3
    invoke-static {p0, v0}, Lcom/android/fileexplorer/controller/IntentBuilder;->checkAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_1a

    .line 9
    new-instance v1, Landroid/content/Intent;

    .line 11
    const-string v2, "com.intent.action.Huanji"

    .line 13
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    const-string v0, "request_from"

    .line 21
    const-string v2, "com.android.fileexplorer"

    .line 23
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    goto :goto_56

    .line 27
    :cond_1a
    sget-boolean v1, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL:Z

    .line 29
    const-string v2, "com.android.vending"

    .line 31
    const-string v3, "com.xiaomi.market"

    .line 33
    if-eqz v1, :cond_24

    .line 35
    move-object v4, v2

    .line 36
    goto :goto_25

    .line 37
    :cond_24
    move-object v4, v3

    .line 38
    :goto_25
    invoke-static {p0, v4}, Lcom/android/fileexplorer/controller/IntentBuilder;->checkAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_55

    .line 44
    new-instance v4, Ljava/lang/StringBuilder;

    .line 46
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    if-eqz v1, :cond_35

    .line 51
    const-string v5, "https://play.google.com/store/apps/details?id="

    .line 53
    goto :goto_37

    .line 54
    :cond_35
    const-string v5, "market://details?id="

    .line 56
    :goto_37
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object v0

    .line 66
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 69
    move-result-object v0

    .line 70
    new-instance v4, Landroid/content/Intent;

    .line 72
    const-string v5, "android.intent.action.VIEW"

    .line 74
    invoke-direct {v4, v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 77
    if-eqz v1, :cond_4f

    .line 79
    goto :goto_50

    .line 80
    :cond_4f
    move-object v2, v3

    .line 81
    :goto_50
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    move-object v1, v4

    .line 85
    goto :goto_56

    .line 86
    :cond_55
    const/4 v1, 0x0

    .line 87
    :goto_56
    if-eqz v1, :cond_60

    .line 89
    const/high16 v0, 0x10000000

    .line 91
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 94
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 97
    :cond_60
    return-void
.end method

.method private static startNoMime(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 8

    .line 1
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 3
    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 10
    const v1, 0x7f110125

    .line 13
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 16
    new-instance v1, Lcom/android/fileexplorer/controller/IntentBuilder$4;

    .line 18
    invoke-direct {v1}, Lcom/android/fileexplorer/controller/IntentBuilder$4;-><init>()V

    .line 21
    const v2, 0x7f110050

    .line 24
    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 27
    const/4 v1, 0x4

    .line 28
    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 30
    const v2, 0x7f110128

    .line 33
    invoke-static {v2}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 36
    move-result-object v2

    .line 37
    const/4 v3, 0x0

    .line 38
    aput-object v2, v1, v3

    .line 40
    const v2, 0x7f110126

    .line 43
    invoke-static {v2}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 46
    move-result-object v2

    .line 47
    const/4 v4, 0x1

    .line 48
    aput-object v2, v1, v4

    .line 50
    const v2, 0x7f110129

    .line 53
    invoke-static {v2}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 56
    move-result-object v2

    .line 57
    const/4 v4, 0x2

    .line 58
    aput-object v2, v1, v4

    .line 60
    const v2, 0x7f110127

    .line 63
    invoke-static {v2}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 66
    move-result-object v2

    .line 67
    const/4 v4, 0x3

    .line 68
    aput-object v2, v1, v4

    .line 70
    new-instance v2, Lcom/android/fileexplorer/controller/IntentBuilder$5;

    .line 72
    invoke-direct {v2, p1, p0, p2}, Lcom/android/fileexplorer/controller/IntentBuilder$5;-><init>(Landroid/net/Uri;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v0, v1, v3, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 78
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    .line 81
    return-void
.end method

.method private static startResolverActivity(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 2

    .line 4
    invoke-static {p1}, Lcom/android/fileexplorer/controller/IntentBuilder;->clearCurrentOpenOper(Landroid/content/Intent;)V

    .line 5
    invoke-static {p0, p1}, Lcom/android/fileexplorer/controller/IntentBuilder;->startViewIntent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private static startResolverActivity(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0}, Lcom/android/fileexplorer/controller/IntentBuilder;->startResolverActivity(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private static startResolverActivity(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    .line 2
    invoke-static {p1, p2, p3}, Lcom/android/fileexplorer/controller/IntentBuilder;->buildViewIntent(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    .line 3
    invoke-static {p0, p1}, Lcom/android/fileexplorer/controller/IntentBuilder;->startResolverActivity(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private static startViewIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 4
    invoke-static {p1}, Lcom/android/fileexplorer/controller/IntentBuilder;->isIntentResolvable(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 5
    :try_start_6
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p0

    const-string p1, "startViewIntent error: "

    .line 6
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 7
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IntentBuilder"

    invoke-static {p1, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_21
    const p0, 0x7f110164

    .line 8
    invoke-static {p0}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    return-void
.end method

.method private static startViewIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0}, Lcom/android/fileexplorer/controller/IntentBuilder;->startViewIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private static startViewIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    .line 2
    invoke-static {p1, p2, p3}, Lcom/android/fileexplorer/controller/IntentBuilder;->buildViewIntent(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    .line 3
    invoke-static {p0, p1}, Lcom/android/fileexplorer/controller/IntentBuilder;->startViewIntent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private static startWithWPS(Landroid/app/Activity;Landroid/content/Intent;)V
    .registers 8

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    const-string v2, "wpsPackageName"

    .line 16
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    const-string v1, "wpsIsPreview"

    .line 21
    const/4 v3, 0x1

    .line 22
    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 25
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 28
    const-string v0, "cn.wps.moffice_eng"

    .line 30
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    invoke-static {}, Lcom/android/fileexplorer/util/WpsSupportUtil;->isWPSSupport()Z

    .line 36
    move-result v0

    .line 37
    const-string v3, "IntentBuilder"

    .line 39
    const-string v4, "name"

    .line 41
    const-string v5, "action_open_doc"

    .line 43
    if-eqz v0, :cond_40

    .line 45
    invoke-static {p1}, Lcom/android/fileexplorer/controller/IntentBuilder;->isIntentResolvable(Landroid/content/Intent;)Z

    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_40

    .line 51
    const-string v0, "startWithWPS"

    .line 53
    invoke-static {v3, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v0, "wps"

    .line 58
    invoke-static {v5, v4, v0}, Lcom/android/fileexplorer/statistics/Statistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 64
    goto :goto_75

    .line 65
    :cond_40
    sget-object v0, Lcom/android/fileexplorer/util/WpsSupportUtil;->WPS_APP_MI_NAME:Ljava/lang/String;

    .line 67
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    invoke-static {p1}, Lcom/android/fileexplorer/controller/IntentBuilder;->isIntentResolvable(Landroid/content/Intent;)Z

    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_59

    .line 76
    const-string v0, "startWithWPS lite"

    .line 78
    invoke-static {v3, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v0, "wps_lite"

    .line 83
    invoke-static {v5, v4, v0}, Lcom/android/fileexplorer/statistics/Statistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 89
    goto :goto_75

    .line 90
    :cond_59
    const-string v0, "app_chooser"

    .line 92
    invoke-static {v5, v4, v0}, Lcom/android/fileexplorer/statistics/Statistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    const-string v0, "startWithWPS with app picker"

    .line 97
    invoke-static {v3, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const/4 v0, 0x0

    .line 101
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    const-string v0, "android.intent.action.VIEW"

    .line 106
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    invoke-virtual {p1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 115
    invoke-static {p0, p1}, Lcom/android/fileexplorer/controller/IntentBuilder;->startViewIntent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 118
    :goto_75
    return-void
.end method

.method private static viewArchive(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    .line 1
    if-eqz p0, :cond_b0

    .line 3
    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_b0

    .line 13
    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_18

    .line 23
    goto/16 :goto_b0

    .line 25
    :cond_18
    new-instance v0, Ljava/util/ArrayList;

    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    invoke-static {}, Lcom/android/fileexplorer/util/DisplayUtil;->isRTL()Z

    .line 33
    move-result v1

    .line 34
    const-string v2, "    "

    .line 36
    const v3, 0x7f110110

    .line 39
    if-eqz v1, :cond_38

    .line 41
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    move-result-object v1

    .line 45
    invoke-static {v3}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v1

    .line 56
    goto :goto_3c

    .line 57
    :cond_38
    invoke-static {v3}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 60
    move-result-object v1

    .line 61
    :goto_3c
    move-object v9, v1

    .line 62
    invoke-static {}, Lcom/android/fileexplorer/util/DisplayUtil;->isRTL()Z

    .line 65
    move-result v1

    .line 66
    const v3, 0x7f110111

    .line 69
    if-eqz v1, :cond_56

    .line 71
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    move-result-object v1

    .line 75
    invoke-static {v3}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object v1

    .line 86
    goto :goto_5a

    .line 87
    :cond_56
    invoke-static {v3}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 90
    move-result-object v1

    .line 91
    :goto_5a
    move-object v4, v1

    .line 92
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 95
    move-result v1

    .line 96
    if-nez v1, :cond_64

    .line 98
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_64
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 107
    move-result v1

    .line 108
    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 110
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 113
    move-result-object v0

    .line 114
    check-cast v0, [Ljava/lang/CharSequence;

    .line 116
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 118
    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 121
    move-result-object v2

    .line 122
    invoke-direct {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 125
    invoke-static {p1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getRealName(Ljava/lang/String;)Ljava/lang/String;

    .line 128
    move-result-object v2

    .line 129
    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 132
    move-result-object v1

    .line 133
    const/4 v2, 0x0

    .line 134
    new-instance v10, Lcom/android/fileexplorer/controller/IntentBuilder$8;

    .line 136
    move-object v3, v10

    .line 137
    move-object v5, v0

    .line 138
    move-object v6, p1

    .line 139
    move-object v7, p2

    .line 140
    move-object v8, p0

    .line 141
    invoke-direct/range {v3 .. v9}, Lcom/android/fileexplorer/controller/IntentBuilder$8;-><init>(Ljava/lang/String;[Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;)V

    .line 144
    invoke-virtual {v1, v0, v2, v10}, Lmiuix/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 147
    move-result-object p2

    .line 148
    new-instance v0, Lcom/android/fileexplorer/controller/IntentBuilder$7;

    .line 150
    invoke-direct {v0, p1, p0}, Lcom/android/fileexplorer/controller/IntentBuilder$7;-><init>(Ljava/lang/String;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)V

    .line 153
    invoke-virtual {p2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 156
    move-result-object p0

    .line 157
    const p1, 0x7f110050

    .line 160
    new-instance p2, Lcom/android/fileexplorer/controller/IntentBuilder$6;

    .line 162
    invoke-direct {p2}, Lcom/android/fileexplorer/controller/IntentBuilder$6;-><init>()V

    .line 165
    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 168
    move-result-object p0

    .line 169
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    .line 172
    move-result-object p0

    .line 173
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 176
    return-void

    .line 177
    :cond_b0
    :goto_b0
    const-string p0, "IntentBuilder"

    .line 179
    const-string p1, "activity is finishing or destroyed"

    .line 181
    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method private static viewAudioFile(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string v1, "android.intent.action.VIEW"

    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    const-string v1, "com.miui.player"

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 20
    invoke-static {v0}, Lcom/android/fileexplorer/controller/IntentBuilder;->isIntentResolvable(Landroid/content/Intent;)Z

    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1d

    .line 26
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 29
    goto :goto_21

    .line 30
    :cond_1d
    const/4 v0, 0x0

    .line 31
    invoke-static {p0, p1, p2, v0}, Lcom/android/fileexplorer/controller/IntentBuilder;->startViewIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 34
    :goto_21
    return-void
.end method

.method private static viewBooksWithDuoKan(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 6

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string v1, "android.intent.action.VIEW"

    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    const-string v1, "com.duokan.reader"

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 17
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    const-string v2, "miback"

    .line 22
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 25
    const-string v1, "miref"

    .line 27
    const-string v2, "fileexplorer"

    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    invoke-static {v0}, Lcom/android/fileexplorer/controller/IntentBuilder;->isIntentResolvable(Landroid/content/Intent;)Z

    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_29

    .line 38
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 41
    goto :goto_2d

    .line 42
    :cond_29
    const/4 v0, 0x0

    .line 43
    invoke-static {p0, p1, p2, v0}, Lcom/android/fileexplorer/controller/IntentBuilder;->startViewIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 46
    :goto_2d
    return-void
.end method

.method public static viewCloudVideo(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;Ljava/lang/String;ZJ)V
    .registers 14

    .line 1
    sget-object v0, Lcom/android/fileexplorer/controller/IntentBuilder;->mTasks:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_16

    .line 16
    const p0, 0x7f110230

    .line 19
    invoke-static {p0}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    .line 22
    return-void

    .line 23
    :cond_16
    const/4 v0, 0x0

    .line 24
    if-eqz p3, :cond_7f

    .line 26
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 29
    move-result-object p3

    .line 30
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 33
    move-result-object p3

    .line 34
    invoke-static {p3}, Lcom/micloud/midrive/manager/ConnectivityManager;->get(Landroid/content/Context;)Lcom/micloud/midrive/manager/ConnectivityManager;

    .line 37
    move-result-object p3

    .line 38
    invoke-virtual {p3}, Lcom/micloud/midrive/manager/ConnectivityManager;->isMeteredNetworkConnected()Z

    .line 41
    move-result p3

    .line 42
    if-eqz p3, :cond_7f

    .line 44
    new-instance p3, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 46
    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 49
    move-result-object v1

    .line 50
    invoke-direct {p3, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 53
    const/4 v1, 0x1

    .line 54
    invoke-virtual {p3, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 57
    move-result-object p3

    .line 58
    const v2, 0x7f110470

    .line 61
    invoke-virtual {p3, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 64
    move-result-object p3

    .line 65
    const v2, 0x1010355

    .line 68
    invoke-virtual {p3, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setIconAttribute(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 71
    move-result-object p3

    .line 72
    const v2, 0x7f1100f8

    .line 75
    invoke-static {v2}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 78
    move-result-object v2

    .line 79
    new-array v1, v1, [Ljava/lang/Object;

    .line 81
    invoke-static {p4, p5}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    .line 84
    move-result-object v3

    .line 85
    aput-object v3, v1, v0

    .line 87
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {p3, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 94
    move-result-object p3

    .line 95
    const v0, 0x7f11046f

    .line 98
    new-instance v7, Lcom/android/fileexplorer/controller/a;

    .line 100
    move-object v1, v7

    .line 101
    move-object v2, p0

    .line 102
    move-object v3, p1

    .line 103
    move-object v4, p2

    .line 104
    move-wide v5, p4

    .line 105
    invoke-direct/range {v1 .. v6}, Lcom/android/fileexplorer/controller/a;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;Ljava/lang/String;J)V

    .line 108
    invoke-virtual {p3, v0, v7}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 111
    move-result-object p0

    .line 112
    const p1, 0x7f110050

    .line 115
    const/4 p2, 0x0

    .line 116
    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 119
    move-result-object p0

    .line 120
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    .line 123
    move-result-object p0

    .line 124
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 127
    return-void

    .line 128
    :cond_7f
    new-instance p3, Lcom/android/cloud/task/RequestPlayUrlTaskWithLoading;

    .line 130
    invoke-direct {p3, p0, p1, p2}, Lcom/android/cloud/task/RequestPlayUrlTaskWithLoading;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    sget-object p1, Lcom/android/fileexplorer/controller/IntentBuilder;->mTasks:Ljava/util/ArrayList;

    .line 135
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    const p1, 0x7f11022e

    .line 141
    invoke-interface {p0, p1, v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->showLoadingDialog(IZ)V

    .line 144
    new-instance p1, Lcom/android/fileexplorer/controller/IntentBuilder$1;

    .line 146
    invoke-direct {p1, p3, p0, p2}, Lcom/android/fileexplorer/controller/IntentBuilder$1;-><init>(Lcom/android/cloud/task/RequestPlayUrlTaskWithLoading;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;)V

    .line 149
    invoke-virtual {p3, p1}, Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask;->setRequestListener(Lcom/micloud/midrive/task/RequestOnlinePlayUrlTask$RequestListener;)V

    .line 152
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 154
    new-array p1, v0, [Ljava/lang/Void;

    .line 156
    invoke-virtual {p3, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 159
    return-void
.end method

.method private static viewCloudVideoFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 1
    new-instance p2, Landroid/content/Intent;

    .line 3
    const-string v0, "com.miui.videoplayer.LOCAL_VIDEO_PLAY"

    .line 5
    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    const-string v0, "com.miui.mediaviewer"

    .line 10
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    const/4 v0, 0x1

    .line 22
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 25
    const-string v1, "."

    .line 27
    invoke-virtual {p3, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 30
    move-result v1

    .line 31
    const/4 v2, -0x1

    .line 32
    if-le v1, v2, :cond_2c

    .line 34
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 37
    move-result v2

    .line 38
    if-le v2, v1, :cond_2c

    .line 40
    const/4 v2, 0x0

    .line 41
    invoke-virtual {p3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 44
    move-result-object p3

    .line 45
    :cond_2c
    const-string v1, "play_title"

    .line 47
    invoke-virtual {p2, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    invoke-static {p2}, Lcom/android/fileexplorer/controller/IntentBuilder;->isIntentResolvable(Landroid/content/Intent;)Z

    .line 53
    move-result v2

    .line 54
    const-string v3, "IntentBuilder"

    .line 56
    if-eqz v2, :cond_47

    .line 58
    const-string p1, "viewCloudVideoFile mediaviewer"

    .line 60
    invoke-static {v3, p1}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string p1, "video_play_from_application_type"

    .line 65
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 68
    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 71
    return-void

    .line 72
    :cond_47
    :try_start_47
    const-string p2, "viewCloudVideoFile video"

    .line 74
    invoke-static {v3, p2}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    new-instance p2, Landroid/content/Intent;

    .line 79
    const-string v2, "duokan.intent.action.VIDEO_PLAY_ANIM"

    .line 81
    invoke-direct {p2, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    const-string v2, "com.miui.video"

    .line 86
    invoke-virtual {p2, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 96
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 99
    invoke-virtual {p2, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_68} :catch_69

    .line 105
    goto :goto_84

    .line 106
    :catch_69
    move-exception p0

    .line 107
    const-string p1, "viewCloudVideoFile error:"

    .line 109
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 116
    move-result-object p0

    .line 117
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    move-result-object p0

    .line 124
    invoke-static {v3, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const p0, 0x7f110164

    .line 130
    invoke-static {p0}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    .line 133
    :goto_84
    return-void
.end method

.method public static viewFile(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;ILjava/lang/String;Z)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileWithExt;",
            ">;I",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 1
    invoke-static/range {v0 .. v5}, Lcom/android/fileexplorer/controller/IntentBuilder;->viewFile(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;ILjava/lang/String;ZLcom/android/fileexplorer/controller/IntentBuilder$ViewFileCallback;)V

    return-void
.end method

.method public static viewFile(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;ILjava/lang/String;ZLcom/android/fileexplorer/controller/IntentBuilder$ViewFileCallback;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileWithExt;",
            ">;I",
            "Ljava/lang/String;",
            "Z",
            "Lcom/android/fileexplorer/controller/IntentBuilder$ViewFileCallback;",
            ")V"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/android/fileexplorer/controller/IntentBuilder;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 3
    sget-object v0, Lcom/android/fileexplorer/controller/IntentBuilder;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_d
    if-eqz p1, :cond_55

    if-ltz p2, :cond_55

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p2, :cond_18

    goto :goto_55

    .line 5
    :cond_18
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lcom/android/fileexplorer/model/FileWithExt;

    .line 6
    invoke-virtual {v2}, Lcom/android/fileexplorer/model/FileWithExt;->getFilePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 7
    invoke-virtual {v2}, Lcom/android/fileexplorer/model/FileWithExt;->getExtension()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_36

    invoke-virtual {v2}, Lcom/android/fileexplorer/model/FileWithExt;->getExtension()Ljava/lang/String;

    move-result-object p2

    goto :goto_3a

    :cond_36
    invoke-static {v6}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_3a
    move-object v1, p2

    .line 8
    sget-object p2, Lcom/android/fileexplorer/controller/IntentBuilder;->mTasks:Ljava/util/ArrayList;

    new-instance v9, Lcom/android/fileexplorer/controller/IntentBuilder$3;

    move-object v0, v9

    move-object v3, p5

    move-object v4, p0

    move v5, p4

    move-object v7, p3

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/fileexplorer/controller/IntentBuilder$3;-><init>(Ljava/lang/String;Lcom/android/fileexplorer/model/FileWithExt;Lcom/android/fileexplorer/controller/IntentBuilder$ViewFileCallback;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 9
    invoke-virtual {v9, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p0

    .line 10
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_55
    :goto_55
    if-eqz p5, :cond_5b

    const/4 p0, 0x0

    .line 11
    invoke-interface {p5, p0}, Lcom/android/fileexplorer/controller/IntentBuilder$ViewFileCallback;->onPostExecute(Ljava/lang/String;)V

    :cond_5b
    return-void
.end method

.method private static viewImageFile(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string v1, "android.intent.action.VIEW"

    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    const-string v1, "com.miui.gallery"

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 20
    invoke-static {v0}, Lcom/android/fileexplorer/controller/IntentBuilder;->isIntentResolvable(Landroid/content/Intent;)Z

    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1d

    .line 26
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 29
    goto :goto_21

    .line 30
    :cond_1d
    const/4 v0, 0x0

    .line 31
    invoke-static {p0, p1, p2, v0}, Lcom/android/fileexplorer/controller/IntentBuilder;->startViewIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 34
    :goto_21
    return-void
.end method

.method public static viewImagesUsingGallery(Landroid/content/Context;Ljava/util/List;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileWithExt;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0xc8

    .line 7
    if-le v0, v1, :cond_23

    .line 9
    const/16 v0, 0x64

    .line 11
    if-gt p2, v0, :cond_12

    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 17
    move-result-object p1

    .line 18
    goto :goto_23

    .line 19
    :cond_12
    add-int/lit8 v0, p2, 0x64

    .line 21
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 24
    move-result v1

    .line 25
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 28
    move-result v0

    .line 29
    add-int/lit16 v1, v0, -0xc8

    .line 31
    invoke-interface {p1, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 34
    move-result-object p1

    .line 35
    sub-int/2addr p2, v1

    .line 36
    :cond_23
    :goto_23
    new-instance v0, Landroid/content/Intent;

    .line 38
    const-string v1, "android.intent.action.VIEW"

    .line 40
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/android/fileexplorer/util/AppUtils;->isAndroid24AndLater()Z

    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_48

    .line 49
    new-instance v1, Ljava/io/File;

    .line 51
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Lcom/android/fileexplorer/model/FileWithExt;

    .line 57
    invoke-virtual {v2}, Lcom/android/fileexplorer/model/FileWithExt;->getFilePath()Ljava/lang/String;

    .line 60
    move-result-object v2

    .line 61
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-static {v1}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->getUriByFileProvider(Ljava/io/File;)Landroid/net/Uri;

    .line 67
    move-result-object v1

    .line 68
    const/4 v2, 0x1

    .line 69
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 72
    goto :goto_5b

    .line 73
    :cond_48
    new-instance v1, Ljava/io/File;

    .line 75
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 78
    move-result-object v2

    .line 79
    check-cast v2, Lcom/android/fileexplorer/model/FileWithExt;

    .line 81
    invoke-virtual {v2}, Lcom/android/fileexplorer/model/FileWithExt;->getFilePath()Ljava/lang/String;

    .line 84
    move-result-object v2

    .line 85
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 91
    move-result-object v1

    .line 92
    :goto_5b
    const-string v2, "image/*"

    .line 94
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    new-instance v3, Ljava/util/ArrayList;

    .line 99
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 102
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 105
    move-result-object p1

    .line 106
    :goto_69
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 109
    move-result v4

    .line 110
    if-eqz v4, :cond_86

    .line 112
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 115
    move-result-object v4

    .line 116
    check-cast v4, Lcom/android/fileexplorer/model/FileWithExt;

    .line 118
    new-instance v5, Ljava/io/File;

    .line 120
    invoke-virtual {v4}, Lcom/android/fileexplorer/model/FileWithExt;->getFilePath()Ljava/lang/String;

    .line 123
    move-result-object v4

    .line 124
    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 130
    move-result-object v4

    .line 131
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    goto :goto_69

    .line 135
    :cond_86
    const-string p1, "position"

    .line 137
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 140
    new-instance v4, Ljava/lang/StringBuilder;

    .line 142
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    const-string v5, "viewImagesUsingGallery: pos = "

    .line 147
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    move-result-object v4

    .line 157
    const-string v5, "IntentBuilder"

    .line 159
    invoke-static {v5, v4}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v4, "com.miui.gallery.extra.photo_items"

    .line 164
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 167
    const-string v5, "com.miui.gallery"

    .line 169
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    invoke-static {v0}, Lcom/android/fileexplorer/controller/IntentBuilder;->isIntentResolvable(Landroid/content/Intent;)Z

    .line 175
    move-result v5

    .line 176
    if-eqz v5, :cond_b5

    .line 178
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 181
    return-void

    .line 182
    :cond_b5
    const-string v5, "com.miui.mediaviewer"

    .line 184
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    invoke-static {v0}, Lcom/android/fileexplorer/controller/IntentBuilder;->isIntentResolvable(Landroid/content/Intent;)Z

    .line 190
    move-result v5

    .line 191
    if-eqz v5, :cond_c4

    .line 193
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 196
    return-void

    .line 197
    :cond_c4
    const/4 v0, 0x0

    .line 198
    invoke-static {v1, v2, v0}, Lcom/android/fileexplorer/controller/IntentBuilder;->buildViewIntent(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 201
    move-result-object v0

    .line 202
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 205
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 208
    invoke-static {p0, v0}, Lcom/android/fileexplorer/controller/IntentBuilder;->startViewIntent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 211
    return-void
.end method

.method public static viewImagesUsingViewLarge(Ljava/lang/String;Landroid/app/Activity;Ljava/util/List;ILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileWithExt;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->getInstance()Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p4, p2, p3}, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->setViewLargeInfo(Ljava/lang/String;Ljava/util/List;I)V

    .line 8
    new-instance p2, Landroid/content/Intent;

    .line 10
    const-class p3, Lcom/android/fileexplorer/activity/ViewLargeActivity;

    .line 12
    invoke-direct {p2, p1, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 15
    const-string p3, "from"

    .line 17
    invoke-virtual {p2, p3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    const/16 p0, 0x75

    .line 22
    invoke-virtual {p1, p2, p0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 25
    return-void
.end method

.method public static viewMTPFile(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/FileInfo;Z)V
    .registers 6

    .line 1
    const-string v0, "IntentBuilder"

    .line 3
    if-eqz p1, :cond_e0

    .line 5
    iget-object v1, p1, Lcom/android/fileexplorer/model/FileInfo;->documentInfo:Lcom/android/fileexplorer/mtp/DocumentInfo;

    .line 7
    if-nez v1, :cond_a

    .line 9
    goto/16 :goto_e0

    .line 11
    :cond_a
    iget-object v1, p1, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 13
    invoke-static {v1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    iget-object v2, p1, Lcom/android/fileexplorer/model/FileInfo;->documentInfo:Lcom/android/fileexplorer/mtp/DocumentInfo;

    .line 19
    iget-object v2, v2, Lcom/android/fileexplorer/mtp/DocumentInfo;->mimeType:Ljava/lang/String;

    .line 21
    if-nez p2, :cond_38

    .line 23
    const-string p2, "Opening mtp file with other app:"

    .line 25
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    move-result-object p2

    .line 29
    iget-object v1, p1, Lcom/android/fileexplorer/model/FileInfo;->documentInfo:Lcom/android/fileexplorer/mtp/DocumentInfo;

    .line 31
    invoke-virtual {v1}, Lcom/android/fileexplorer/mtp/DocumentInfo;->toString()Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object p2

    .line 42
    invoke-static {v0, p2}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 48
    move-result-object p0

    .line 49
    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->documentInfo:Lcom/android/fileexplorer/mtp/DocumentInfo;

    .line 51
    iget-object p1, p1, Lcom/android/fileexplorer/mtp/DocumentInfo;->derivedUri:Landroid/net/Uri;

    .line 53
    invoke-static {p0, p1, v2}, Lcom/android/fileexplorer/controller/IntentBuilder;->startViewIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    .line 56
    return-void

    .line 57
    :cond_38
    invoke-static {v2, v1}, Lcom/android/fileexplorer/controller/IntentBuilder;->isAudioFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 60
    move-result p2

    .line 61
    if-eqz p2, :cond_61

    .line 63
    const-string p2, "Opening mtp file with audio:"

    .line 65
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    move-result-object p2

    .line 69
    iget-object v1, p1, Lcom/android/fileexplorer/model/FileInfo;->documentInfo:Lcom/android/fileexplorer/mtp/DocumentInfo;

    .line 71
    invoke-virtual {v1}, Lcom/android/fileexplorer/mtp/DocumentInfo;->toString()Ljava/lang/String;

    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object p2

    .line 82
    invoke-static {v0, p2}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 88
    move-result-object p0

    .line 89
    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->documentInfo:Lcom/android/fileexplorer/mtp/DocumentInfo;

    .line 91
    iget-object p1, p1, Lcom/android/fileexplorer/mtp/DocumentInfo;->derivedUri:Landroid/net/Uri;

    .line 93
    invoke-static {p0, p1, v2}, Lcom/android/fileexplorer/controller/IntentBuilder;->viewAudioFile(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    .line 96
    goto/16 :goto_df

    .line 98
    :cond_61
    const-string p2, "image/"

    .line 100
    invoke-virtual {v2, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 103
    move-result p2

    .line 104
    if-eqz p2, :cond_8b

    .line 106
    const-string p2, "Opening mtp file with image:"

    .line 108
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    move-result-object p2

    .line 112
    iget-object v1, p1, Lcom/android/fileexplorer/model/FileInfo;->documentInfo:Lcom/android/fileexplorer/mtp/DocumentInfo;

    .line 114
    invoke-virtual {v1}, Lcom/android/fileexplorer/mtp/DocumentInfo;->toString()Ljava/lang/String;

    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    move-result-object p2

    .line 125
    invoke-static {v0, p2}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 131
    move-result-object p0

    .line 132
    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->documentInfo:Lcom/android/fileexplorer/mtp/DocumentInfo;

    .line 134
    iget-object p1, p1, Lcom/android/fileexplorer/mtp/DocumentInfo;->derivedUri:Landroid/net/Uri;

    .line 136
    invoke-static {p0, p1, v2}, Lcom/android/fileexplorer/controller/IntentBuilder;->viewImageFile(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    .line 139
    goto :goto_df

    .line 140
    :cond_8b
    const-string p2, "video/"

    .line 142
    invoke-virtual {v2, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 145
    move-result p2

    .line 146
    if-eqz p2, :cond_b6

    .line 148
    const-string p2, "Opening mtp file with video:"

    .line 150
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    move-result-object p2

    .line 154
    iget-object v1, p1, Lcom/android/fileexplorer/model/FileInfo;->documentInfo:Lcom/android/fileexplorer/mtp/DocumentInfo;

    .line 156
    invoke-virtual {v1}, Lcom/android/fileexplorer/mtp/DocumentInfo;->toString()Ljava/lang/String;

    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    move-result-object p2

    .line 167
    invoke-static {v0, p2}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 173
    move-result-object p0

    .line 174
    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->documentInfo:Lcom/android/fileexplorer/mtp/DocumentInfo;

    .line 176
    iget-object p1, p1, Lcom/android/fileexplorer/mtp/DocumentInfo;->derivedUri:Landroid/net/Uri;

    .line 178
    const/4 p2, 0x0

    .line 179
    invoke-static {p0, p1, v2, p2}, Lcom/android/fileexplorer/controller/IntentBuilder;->viewVideoFile(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 182
    goto :goto_df

    .line 183
    :cond_b6
    const-string p2, "Not support mtp file:"

    .line 185
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    move-result-object p2

    .line 189
    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->documentInfo:Lcom/android/fileexplorer/mtp/DocumentInfo;

    .line 191
    invoke-virtual {p1}, Lcom/android/fileexplorer/mtp/DocumentInfo;->toString()Ljava/lang/String;

    .line 194
    move-result-object p1

    .line 195
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    move-result-object p1

    .line 202
    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 208
    move-result-object p0

    .line 209
    const p1, 0x7f1102e1

    .line 212
    invoke-static {p1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 215
    move-result-object p1

    .line 216
    const/4 p2, 0x0

    .line 217
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 220
    move-result-object p0

    .line 221
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 224
    :goto_df
    return-void

    .line 225
    :cond_e0
    :goto_e0
    const-string p0, "fileInfo or documentInfo is null"

    .line 227
    invoke-static {v0, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method public static viewSmbFile(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;Z)V
    .registers 8

    .line 1
    :try_start_0
    new-instance p2, Ljcifs/smb/SmbFile;

    .line 3
    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 5
    invoke-direct {p2, p1}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/android/fileexplorer/model/ArchiveHelper;->getInstance()Lcom/android/fileexplorer/model/ArchiveHelper;

    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p2}, Ljcifs/smb/SmbFile;->getPath()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/model/ArchiveHelper;->checkIfArchive(Ljava/lang/String;)Z

    .line 19
    move-result p1

    .line 20
    const/4 v0, 0x0

    .line 21
    const v1, 0x7f1102e1

    .line 24
    if-eqz p1, :cond_29

    .line 26
    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 29
    move-result-object p0

    .line 30
    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 41
    return-void

    .line 42
    :cond_29
    invoke-virtual {p2}, Ljcifs/smb/SmbFile;->getPath()Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    invoke-static {p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    invoke-static {p1}, Lcom/android/fileexplorer/util/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    move-result-object v2

    .line 54
    const-string v3, "*/*"

    .line 56
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 59
    move-result v3

    .line 60
    if-nez v3, :cond_a8

    .line 62
    invoke-static {v2, p1}, Lcom/android/fileexplorer/controller/IntentBuilder;->isAudioFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_50

    .line 68
    const-string v0, "video/"

    .line 70
    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_4c

    .line 76
    goto :goto_50

    .line 77
    :cond_4c
    invoke-static {p0, p2, p3}, Lcom/android/fileexplorer/controller/IntentBuilder;->viewSmbInLocal(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljcifs/smb/SmbFile;Z)V

    .line 80
    goto :goto_bc

    .line 81
    :cond_50
    :goto_50
    new-instance p3, Landroid/content/Intent;

    .line 83
    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 86
    move-result-object v0

    .line 87
    const-class v1, Lcom/android/fileexplorer/smb/StreamService;

    .line 89
    invoke-direct {p3, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    const-string v0, "filePath"

    .line 94
    invoke-virtual {p2}, Ljcifs/smb/SmbFile;->getPath()Ljava/lang/String;

    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    const/high16 v0, 0x10000000

    .line 103
    invoke-virtual {p3, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 106
    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v0, p3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 113
    new-instance p3, Ljava/lang/StringBuilder;

    .line 115
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    const-string v0, "http://127.0.0.1:7878/"

    .line 120
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {p2}, Ljcifs/smb/SmbFile;->getPath()Ljava/lang/String;

    .line 126
    move-result-object p2

    .line 127
    invoke-static {p2}, Lcom/android/fileexplorer/smb/StreamService;->getNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    .line 130
    move-result-object p2

    .line 131
    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 134
    move-result-object p2

    .line 135
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    move-result-object p2

    .line 142
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 145
    move-result-object p2

    .line 146
    invoke-static {v2, p1}, Lcom/android/fileexplorer/controller/IntentBuilder;->isAudioFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 149
    move-result p1

    .line 150
    if-eqz p1, :cond_9f

    .line 152
    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 155
    move-result-object p0

    .line 156
    invoke-static {p0, p2, v2}, Lcom/android/fileexplorer/controller/IntentBuilder;->viewAudioFile(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    .line 159
    goto :goto_bc

    .line 160
    :cond_9f
    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 163
    move-result-object p0

    .line 164
    const/4 p1, 0x0

    .line 165
    invoke-static {p0, p2, v2, p1}, Lcom/android/fileexplorer/controller/IntentBuilder;->viewVideoFile(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 168
    goto :goto_bc

    .line 169
    :cond_a8
    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 172
    move-result-object p0

    .line 173
    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 176
    move-result-object p1

    .line 177
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 180
    move-result-object p0

    .line 181
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b7} :catch_b8

    .line 184
    goto :goto_bc

    .line 185
    :catch_b8
    move-exception p0

    .line 186
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 189
    :goto_bc
    return-void
.end method

.method private static viewSmbInLocal(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljcifs/smb/SmbFile;Z)V
    .registers 5

    .line 1
    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Lcom/android/fileexplorer/controller/IntentBuilder;->getCacheFilePath(Landroid/content/Context;Ljcifs/smb/SmbFile;)Ljava/io/File;

    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/android/fileexplorer/controller/IntentBuilder$2;

    .line 11
    invoke-direct {v1, p0, p1, v0, p2}, Lcom/android/fileexplorer/controller/IntentBuilder$2;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljcifs/smb/SmbFile;Ljava/io/File;Z)V

    .line 14
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 16
    const/4 p1, 0x0

    .line 17
    new-array p1, p1, [Ljava/lang/Void;

    .line 19
    invoke-virtual {v1, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 22
    return-void
.end method

.method private static viewVideoByDefault(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string v1, "android.intent.action.VIEW"

    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    if-eqz p3, :cond_c

    .line 10
    invoke-virtual {v0, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 13
    :cond_c
    const-string v1, "com.google.android.apps.photos"

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    const/high16 v1, 0x10000000

    .line 23
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 30
    :try_start_1d
    invoke-static {v0}, Lcom/android/fileexplorer/controller/IntentBuilder;->isIntentResolvable(Landroid/content/Intent;)Z

    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_27

    .line 36
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 39
    goto :goto_45

    .line 40
    :cond_27
    invoke-static {p0, p1, p2, p3}, Lcom/android/fileexplorer/controller/IntentBuilder;->startViewIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_2a} :catch_2b

    .line 43
    goto :goto_45

    .line 44
    :catch_2b
    move-exception v0

    .line 45
    const-string v1, "viewVideoByDefault error:"

    .line 47
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    const-string v1, "IntentBuilder"

    .line 64
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-static {p0, p1, p2, p3}, Lcom/android/fileexplorer/controller/IntentBuilder;->startViewIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 70
    :goto_45
    return-void
.end method

.method private static viewVideoByGallery(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string v1, "com.miui.videoplayer.GALLERY_VIDEO_PLAY"

    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    if-eqz p3, :cond_c

    .line 10
    invoke-virtual {v0, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 13
    :cond_c
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    const/high16 v1, 0x10000000

    .line 18
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 25
    :try_start_18
    invoke-static {v0}, Lcom/android/fileexplorer/controller/IntentBuilder;->isIntentResolvable(Landroid/content/Intent;)Z

    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_22

    .line 31
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 34
    goto :goto_40

    .line 35
    :cond_22
    invoke-static {p0, p1, p2, p3}, Lcom/android/fileexplorer/controller/IntentBuilder;->viewVideoByDefault(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_25} :catch_26

    .line 38
    goto :goto_40

    .line 39
    :catch_26
    move-exception v0

    .line 40
    const-string v1, "viewVideoByGallery error:"

    .line 42
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 57
    const-string v1, "IntentBuilder"

    .line 59
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-static {p0, p1, p2, p3}, Lcom/android/fileexplorer/controller/IntentBuilder;->viewVideoByDefault(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 65
    :goto_40
    return-void
.end method

.method private static viewVideoFile(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 10

    .line 1
    sget-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL:Z

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-static {p0, p1, p2, p3}, Lcom/android/fileexplorer/controller/IntentBuilder;->viewVideoFileGlobal(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 8
    return-void

    .line 9
    :cond_8
    new-instance v0, Landroid/content/Intent;

    .line 11
    const-string v1, "duokan.intent.action.VIDEO_PLAY_ANIM"

    .line 13
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 16
    const-string v2, "com.miui.mediaviewer"

    .line 18
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    if-eqz p3, :cond_19

    .line 23
    invoke-virtual {v0, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 26
    :cond_19
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    const/4 v2, 0x1

    .line 30
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 33
    invoke-static {v0}, Lcom/android/fileexplorer/controller/IntentBuilder;->isIntentResolvable(Landroid/content/Intent;)Z

    .line 36
    move-result v3

    .line 37
    const-string v4, "video_play_from_application_type"

    .line 39
    const-string v5, "IntentBuilder"

    .line 41
    if-eqz v3, :cond_36

    .line 43
    const-string p1, "viewVideoFile mediaviewer"

    .line 45
    invoke-static {v5, p1}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 51
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 54
    return-void

    .line 55
    :cond_36
    const-string v3, "com.miui.mediaviewer.VIDEO_PLAY"

    .line 57
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    invoke-static {v0}, Lcom/android/fileexplorer/controller/IntentBuilder;->isIntentResolvable(Landroid/content/Intent;)Z

    .line 63
    move-result v3

    .line 64
    if-eqz v3, :cond_4d

    .line 66
    const-string p1, "viewVideoFile video VIDEO_PLAY"

    .line 68
    invoke-static {v5, p1}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 74
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 77
    return-void

    .line 78
    :cond_4d
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const-string v1, "com.miui.video"

    .line 83
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    invoke-static {v0}, Lcom/android/fileexplorer/controller/IntentBuilder;->isIntentResolvable(Landroid/content/Intent;)Z

    .line 89
    move-result v1

    .line 90
    if-eqz v1, :cond_64

    .line 92
    const-string p1, "viewVideoFile video VIDEO_PLAY_ANIM"

    .line 94
    invoke-static {v5, p1}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 100
    goto :goto_7b

    .line 101
    :cond_64
    const-string v1, "duokan.intent.action.VIDEO_PLAY"

    .line 103
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    invoke-static {v0}, Lcom/android/fileexplorer/controller/IntentBuilder;->isIntentResolvable(Landroid/content/Intent;)Z

    .line 109
    move-result v1

    .line 110
    if-eqz v1, :cond_78

    .line 112
    const-string p1, "viewVideoFile with oldAction"

    .line 114
    invoke-static {v5, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 120
    goto :goto_7b

    .line 121
    :cond_78
    invoke-static {p0, p1, p2, p3}, Lcom/android/fileexplorer/controller/IntentBuilder;->startViewIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 124
    :goto_7b
    return-void
.end method

.method private static viewVideoFileGlobal(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    .line 1
    if-nez p0, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    new-instance v0, Landroid/content/Intent;

    .line 6
    const-string v1, "duokan.intent.action.VIDEO_PLAY"

    .line 8
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 11
    if-eqz p3, :cond_f

    .line 13
    invoke-virtual {v0, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 16
    :cond_f
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 19
    const/high16 v1, 0x10000000

    .line 21
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 24
    const/4 v1, 0x1

    .line 25
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 28
    invoke-static {v0}, Lcom/android/fileexplorer/controller/IntentBuilder;->isIntentResolvable(Landroid/content/Intent;)Z

    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_25

    .line 34
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 37
    goto :goto_3a

    .line 38
    :cond_25
    sget-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL_PHONE:Z

    .line 40
    if-eqz v0, :cond_37

    .line 42
    invoke-static {}, Lcom/android/fileexplorer/controller/IntentBuilder;->isIndiaROM()Z

    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_33

    .line 48
    invoke-static {p0, p1, p2, p3}, Lcom/android/fileexplorer/controller/IntentBuilder;->viewVideoByGallery(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 51
    goto :goto_3a

    .line 52
    :cond_33
    invoke-static {p0, p1, p2, p3}, Lcom/android/fileexplorer/controller/IntentBuilder;->viewVideoByDefault(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 55
    goto :goto_3a

    .line 56
    :cond_37
    invoke-static {p0, p1, p2, p3}, Lcom/android/fileexplorer/controller/IntentBuilder;->startViewIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 59
    :goto_3a
    return-void
.end method
