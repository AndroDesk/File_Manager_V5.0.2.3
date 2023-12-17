.class public final Lmiuix/navigation/R$string;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/navigation/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "string"
.end annotation


# static fields
.field public static final content_preview_ratio:I

.field public static final status_bar_notification_info_overflow:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x7f182d66

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/navigation/R$string;->content_preview_ratio:I

    const v0, 0x7f182e6f

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/navigation/R$string;->status_bar_notification_info_overflow:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
