.class Lmiuix/navigator/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# static fields
.field private static final CALLBACKS:Landroidx/fragment/app/FragmentManager$l;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lmiuix/navigator/LogUtils$1;

    .line 3
    invoke-direct {v0}, Lmiuix/navigator/LogUtils$1;-><init>()V

    .line 6
    sput-object v0, Lmiuix/navigator/LogUtils;->CALLBACKS:Landroidx/fragment/app/FragmentManager$l;

    .line 8
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static addLifecycleLog(Landroidx/fragment/app/FragmentManager;)V
    .registers 3

    .line 1
    sget-object v0, Lmiuix/navigator/LogUtils;->CALLBACKS:Landroidx/fragment/app/FragmentManager$l;

    .line 3
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->m:Landroidx/fragment/app/s;

    .line 5
    iget-object p0, p0, Landroidx/fragment/app/s;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 7
    new-instance v1, Landroidx/fragment/app/s$a;

    .line 9
    invoke-direct {v1, v0}, Landroidx/fragment/app/s$a;-><init>(Landroidx/fragment/app/FragmentManager$l;)V

    .line 12
    invoke-virtual {p0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    return-void
.end method
