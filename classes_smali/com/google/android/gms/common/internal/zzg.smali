.class public final Lcom/google/android/gms/common/internal/zzg;
.super Ljava/lang/Object;


# static fields
.field private static final zzed:Landroid/net/Uri;

.field private static final zzee:Landroid/net/Uri;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    const-string v0, "https://plus.google.com/"

    .line 3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/google/android/gms/common/internal/zzg;->zzed:Landroid/net/Uri;

    .line 9
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 12
    move-result-object v0

    .line 13
    const-string v1, "circles"

    .line 15
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 18
    move-result-object v0

    .line 19
    const-string v1, "find"

    .line 21
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lcom/google/android/gms/common/internal/zzg;->zzee:Landroid/net/Uri;

    .line 31
    return-void
.end method

.method public static zza(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string v1, "android.intent.action.VIEW"

    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    const-string v1, "market://details"

    .line 10
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 17
    move-result-object v1

    .line 18
    const-string v2, "id"

    .line 20
    invoke-virtual {v1, v2, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 23
    move-result-object p0

    .line 24
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_22

    .line 30
    const-string v1, "pcampaignid"

    .line 32
    invoke-virtual {p0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 35
    :cond_22
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 42
    const-string p0, "com.android.vending"

    .line 44
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    const/high16 p0, 0x80000

    .line 49
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 52
    return-object v0
.end method

.method public static zzg(Ljava/lang/String;)Landroid/content/Intent;
    .registers 3

    .line 1
    const-string v0, "package"

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, p0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 7
    move-result-object p0

    .line 8
    new-instance v0, Landroid/content/Intent;

    .line 10
    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 12
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 18
    return-object v0
.end method

.method public static zzs()Landroid/content/Intent;
    .registers 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string v1, "com.google.android.clockwork.home.UPDATE_ANDROID_WEAR_ACTION"

    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    const-string v1, "com.google.android.wearable.app"

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    return-object v0
.end method
