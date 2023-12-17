.class public Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$URL;
.super Ljava/lang/Object;
.source "MiCloudConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/micloudsdk/utils/MiCloudConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "URL"
.end annotation


# static fields
.field private static final CURRENT_VERSION:Ljava/lang/String;

.field public static final URL_GALLERY_BASE:Ljava/lang/String;

.field public static final URL_MICLOUD_FAMILY_INFO:Ljava/lang/String;

.field public static final URL_MICLOUD_MEMBER_STATUS_QUERY:Ljava/lang/String;

.field private static final URL_MICLOUD_STATUS_BASE:Ljava/lang/String;

.field public static final URL_MICLOUD_STATUS_QUERY:Ljava/lang/String;

.field public static final URL_RELOCATION_BASE:Ljava/lang/String;

.field public static final URL_RICH_MEDIA_BASE:Ljava/lang/String;

.field private static final VERSION_PATH:Ljava/lang/String; = "/mic/status/v2"


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    sget-boolean v0, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants;->USE_PREVIEW:Z

    .line 3
    if-eqz v0, :cond_7

    .line 5
    const-string v1, "http://statusapi.micloud.preview.n.xiaomi.net"

    .line 7
    goto :goto_9

    .line 8
    :cond_7
    const-string v1, "http://statusapi.micloud.xiaomi.net"

    .line 10
    :goto_9
    sput-object v1, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$URL;->URL_MICLOUD_STATUS_BASE:Ljava/lang/String;

    .line 12
    const-string v2, "/mic/status/v2"

    .line 14
    invoke-static {v1, v2}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    sput-object v1, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$URL;->CURRENT_VERSION:Ljava/lang/String;

    .line 20
    const-string v2, "/user/overview"

    .line 22
    invoke-static {v1, v2}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object v2

    .line 26
    sput-object v2, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$URL;->URL_MICLOUD_STATUS_QUERY:Ljava/lang/String;

    .line 28
    const-string v2, "/user/level"

    .line 30
    invoke-static {v1, v2}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object v2

    .line 34
    sput-object v2, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$URL;->URL_MICLOUD_MEMBER_STATUS_QUERY:Ljava/lang/String;

    .line 36
    const-string v2, "/user/family/quota/used"

    .line 38
    invoke-static {v1, v2}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    move-result-object v1

    .line 42
    sput-object v1, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$URL;->URL_MICLOUD_FAMILY_INFO:Ljava/lang/String;

    .line 44
    if-eqz v0, :cond_30

    .line 46
    const-string v1, "http://micloud.preview.n.xiaomi.net"

    .line 48
    goto :goto_32

    .line 49
    :cond_30
    const-string v1, "http://galleryapi.micloud.xiaomi.net"

    .line 51
    :goto_32
    sput-object v1, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$URL;->URL_GALLERY_BASE:Ljava/lang/String;

    .line 53
    if-eqz v0, :cond_39

    .line 55
    const-string v1, "http://api.micloud.preview.n.xiaomi.net"

    .line 57
    goto :goto_3b

    .line 58
    :cond_39
    const-string v1, "http://fileapi.micloud.xiaomi.net"

    .line 60
    :goto_3b
    sput-object v1, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$URL;->URL_RICH_MEDIA_BASE:Ljava/lang/String;

    .line 62
    if-eqz v0, :cond_42

    .line 64
    const-string v0, "http://relocationapi.micloud.preview.n.xiaomi.net"

    .line 66
    goto :goto_44

    .line 67
    :cond_42
    const-string v0, "https://relocationapi.micloud.xiaomi.net"

    .line 69
    :goto_44
    sput-object v0, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$URL;->URL_RELOCATION_BASE:Ljava/lang/String;

    .line 71
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
