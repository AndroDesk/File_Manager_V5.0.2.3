.class Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$4;
.super Ljava/lang/Object;
.source "FragmentStateAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->scheduleGracePeriodEnd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;


# direct methods
.method public constructor <init>(Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$4;->this$0:Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$4;->this$0:Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;

    .line 3
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mIsInGracePeriod:Z

    .line 6
    invoke-virtual {v0}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->gcFragments()V

    .line 9
    return-void
.end method
