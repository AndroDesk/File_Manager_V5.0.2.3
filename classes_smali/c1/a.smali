.class public final Lc1/a;
.super Ljava/lang/Object;


# static fields
.field public static final view_tree_saved_state_registry_owner:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x7f03290a

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lc1/a;->view_tree_saved_state_registry_owner:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
