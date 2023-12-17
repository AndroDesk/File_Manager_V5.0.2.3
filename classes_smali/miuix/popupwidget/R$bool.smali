.class public final Lmiuix/popupwidget/R$bool;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/popupwidget/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "bool"
.end annotation


# static fields
.field public static final abc_action_bar_embed_tabs:I

.field public static final abc_config_actionMenuItemAllCaps:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x7f0c2d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/popupwidget/R$bool;->abc_action_bar_embed_tabs:I

    const v0, 0x7f0c2d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/popupwidget/R$bool;->abc_config_actionMenuItemAllCaps:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
