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
.method public constructor <init>(Lcom/android/fileexplorer/util/PrivateLockUtil;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/util/PrivateLockUtil$1;->this$0:Lcom/android/fileexplorer/util/PrivateLockUtil;

    .line 3
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    const-class p1, Lcom/android/fileexplorer/fragment/RecentFragment;

    .line 8
    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 11
    const-class p1, Lcom/android/fileexplorer/pad/fragment/PadFileFragment;

    .line 13
    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 16
    const-class p1, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    .line 18
    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 21
    const-class p1, Lcom/android/fileexplorer/pad/fragment/PadRecentFragment;

    .line 23
    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 26
    return-void
.end method
