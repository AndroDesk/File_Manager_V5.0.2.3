.class public final Lcom/google/firebase/crashlytics/R$integer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "integer"
.end annotation


# static fields
.field public static final google_play_services_version:I

.field public static final status_bar_notification_info_maxnum:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x7f022d8d

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/firebase/crashlytics/R$integer;->google_play_services_version:I

    const v0, 0x7f022db9

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/firebase/crashlytics/R$integer;->status_bar_notification_info_maxnum:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method