.class Lcom/android/fileexplorer/util/PrivateLockUtil$1;
.super Ljava/util/ArrayList;
.source "PrivateLockUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/util/PrivateLockUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/util/PrivateLockUtil;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/util/PrivateLockUtil;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/util/PrivateLockUtil$1;->this$0:Lcom/android/fileexplorer/util/PrivateLockUtil;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-class p1, Lcom/android/fileexplorer/fragment/RecentFragment;

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    const-class p1, Lcom/android/fileexplorer/pad/fragment/PadFileFragment;

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    const-class p1, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    const-class p1, Lcom/android/fileexplorer/pad/fragment/PadRecentFragment;

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method
