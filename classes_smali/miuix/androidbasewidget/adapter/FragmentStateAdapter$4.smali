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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;)V
    .registers 2

    iput-object p1, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$4;->this$0:Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$4;->this$0:Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->mIsInGracePeriod:Z

    invoke-virtual {v0}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->gcFragments()V

    return-void
.end method
