.class Lmiuix/navigator/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# static fields
.field private static final CALLBACKS:Landroidx/fragment/app/FragmentManager$l;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lmiuix/navigator/LogUtils$1;

    invoke-direct {v0}, Lmiuix/navigator/LogUtils$1;-><init>()V

    sput-object v0, Lmiuix/navigator/LogUtils;->CALLBACKS:Landroidx/fragment/app/FragmentManager$l;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addLifecycleLog(Landroidx/fragment/app/FragmentManager;)V
    .registers 3

    sget-object v0, Lmiuix/navigator/LogUtils;->CALLBACKS:Landroidx/fragment/app/FragmentManager$l;

    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->m:Landroidx/fragment/app/s;

    iget-object p0, p0, Landroidx/fragment/app/s;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Landroidx/fragment/app/s$a;

    invoke-direct {v1, v0}, Landroidx/fragment/app/s$a;-><init>(Landroidx/fragment/app/FragmentManager$l;)V

    invoke-virtual {p0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
