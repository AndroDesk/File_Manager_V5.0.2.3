.class public final Lcom/google/firebase/crashlytics/R$string;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "string"
.end annotation


# static fields
.field public static final common_google_play_services_unknown_issue:I

.field public static final status_bar_notification_info_overflow:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x7f182d70

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/firebase/crashlytics/R$string;->common_google_play_services_unknown_issue:I

    const v0, 0x7f182e6f

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/firebase/crashlytics/R$string;->status_bar_notification_info_overflow:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
