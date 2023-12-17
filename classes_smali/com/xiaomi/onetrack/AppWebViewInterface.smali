.class public Lcom/xiaomi/onetrack/AppWebViewInterface;
.super Ljava/lang/Object;


# static fields
.field public static final JAVASCRIPT_INTERFACE_NAME:Ljava/lang/String; = "OneTrack_APP_H5_Bridge"

.field private static final a:Ljava/lang/String; = "AppWebViewInterface"


# instance fields
.field private b:Lcom/xiaomi/onetrack/OneTrack;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/OneTrack;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/xiaomi/onetrack/AppWebViewInterface;->b:Lcom/xiaomi/onetrack/OneTrack;

    .line 6
    return-void
.end method


# virtual methods
.method public track(Ljava/lang/String;)Z
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "received h5 data. data: "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    const-string v1, "AppWebViewInterface"

    .line 20
    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/xiaomi/onetrack/AppWebViewInterface;->b:Lcom/xiaomi/onetrack/OneTrack;

    .line 25
    const/4 v2, 0x0

    .line 26
    if-nez v0, :cond_21

    .line 28
    const-string p1, "mOneTrack is null, return false"

    .line 30
    invoke-static {v1, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return v2

    .line 34
    :cond_21
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_2d

    .line 40
    const-string p1, "h5 data is empty, return false"

    .line 42
    invoke-static {v1, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return v2

    .line 46
    :cond_2d
    iget-object v0, p0, Lcom/xiaomi/onetrack/AppWebViewInterface;->b:Lcom/xiaomi/onetrack/OneTrack;

    .line 48
    invoke-virtual {v0, p1}, Lcom/xiaomi/onetrack/OneTrack;->trackEventFromH5(Ljava/lang/String;)V

    .line 51
    const/4 p1, 0x1

    .line 52
    return p1
.end method
