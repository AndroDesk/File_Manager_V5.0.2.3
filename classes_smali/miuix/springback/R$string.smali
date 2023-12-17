.class public final Lmiuix/springback/R$string;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/springback/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "string"
.end annotation


# static fields
.field public static final miuix_sbl_tracking_progress_labe_pull_to_refresh:I

.field public static final miuix_sbl_tracking_progress_labe_refreshed:I

.field public static final miuix_sbl_tracking_progress_labe_refreshing:I

.field public static final miuix_sbl_tracking_progress_labe_release_to_refresh:I

.field public static final miuix_sbl_tracking_progress_labe_up_nodata:I

.field public static final miuix_sbl_tracking_progress_labe_up_none:I

.field public static final miuix_sbl_tracking_progress_labe_up_refresh:I

.field public static final miuix_sbl_tracking_progress_labe_up_refresh_fail:I

.field public static final status_bar_notification_info_overflow:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x7f182ff2

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/springback/R$string;->miuix_sbl_tracking_progress_labe_pull_to_refresh:I

    const v0, 0x7f182ff3

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/springback/R$string;->miuix_sbl_tracking_progress_labe_refreshed:I

    const v0, 0x7f182ff0

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/springback/R$string;->miuix_sbl_tracking_progress_labe_refreshing:I

    const v0, 0x7f182ff1

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/springback/R$string;->miuix_sbl_tracking_progress_labe_release_to_refresh:I

    const v0, 0x7f182ffe

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/springback/R$string;->miuix_sbl_tracking_progress_labe_up_nodata:I

    const v0, 0x7f182fff

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/springback/R$string;->miuix_sbl_tracking_progress_labe_up_none:I

    const v0, 0x7f182ffc

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/springback/R$string;->miuix_sbl_tracking_progress_labe_up_refresh:I

    const v0, 0x7f182ffd

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/springback/R$string;->miuix_sbl_tracking_progress_labe_up_refresh_fail:I

    const v0, 0x7f182e6f

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/springback/R$string;->status_bar_notification_info_overflow:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
