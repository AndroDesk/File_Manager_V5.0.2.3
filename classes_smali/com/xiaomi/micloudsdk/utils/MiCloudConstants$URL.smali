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

    sget-boolean v0, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants;->USE_PREVIEW:Z

    if-eqz v0, :cond_7

    const-string v1, "http://statusapi.micloud.preview.n.xiaomi.net"

    goto :goto_9

    :cond_7
    const-string v1, "http://statusapi.micloud.xiaomi.net"

    :goto_9
    sput-object v1, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$URL;->URL_MICLOUD_STATUS_BASE:Ljava/lang/String;

    const-string v2, "/mic/status/v2"

    invoke-static {v1, v2}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$URL;->CURRENT_VERSION:Ljava/lang/String;

    const-string v2, "/user/overview"

    invoke-static {v1, v2}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$URL;->URL_MICLOUD_STATUS_QUERY:Ljava/lang/String;

    const-string v2, "/user/level"

    invoke-static {v1, v2}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$URL;->URL_MICLOUD_MEMBER_STATUS_QUERY:Ljava/lang/String;

    const-string v2, "/user/family/quota/used"

    invoke-static {v1, v2}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$URL;->URL_MICLOUD_FAMILY_INFO:Ljava/lang/String;

    if-eqz v0, :cond_30

    const-string v1, "http://micloud.preview.n.xiaomi.net"

    goto :goto_32

    :cond_30
    const-string v1, "http://galleryapi.micloud.xiaomi.net"

    :goto_32
    sput-object v1, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$URL;->URL_GALLERY_BASE:Ljava/lang/String;

    if-eqz v0, :cond_39

    const-string v1, "http://api.micloud.preview.n.xiaomi.net"

    goto :goto_3b

    :cond_39
    const-string v1, "http://fileapi.micloud.xiaomi.net"

    :goto_3b
    sput-object v1, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$URL;->URL_RICH_MEDIA_BASE:Ljava/lang/String;

    if-eqz v0, :cond_42

    const-string v0, "http://relocationapi.micloud.preview.n.xiaomi.net"

    goto :goto_44

    :cond_42
    const-string v0, "https://relocationapi.micloud.xiaomi.net"

    :goto_44
    sput-object v0, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$URL;->URL_RELOCATION_BASE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
