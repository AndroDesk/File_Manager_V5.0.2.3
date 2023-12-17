.class Lcom/android/fileexplorer/view/aosp/TabLayout$AdapterChangeListener;
.super Ljava/lang/Object;
.source "TabLayout.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/view/aosp/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdapterChangeListener"
.end annotation


# instance fields
.field private autoRefresh:Z

.field public final synthetic this$0:Lcom/android/fileexplorer/view/aosp/TabLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/view/aosp/TabLayout;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$AdapterChangeListener;->this$0:Lcom/android/fileexplorer/view/aosp/TabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdapterChanged(Landroidx/viewpager/widget/ViewPager;Li1/a;Li1/a;)V
    .registers 5

    iget-object p2, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$AdapterChangeListener;->this$0:Lcom/android/fileexplorer/view/aosp/TabLayout;

    iget-object v0, p2, Lcom/android/fileexplorer/view/aosp/TabLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    if-ne v0, p1, :cond_b

    iget-boolean p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$AdapterChangeListener;->autoRefresh:Z

    invoke-virtual {p2, p3, p1}, Lcom/android/fileexplorer/view/aosp/TabLayout;->setPagerAdapter(Li1/a;Z)V

    :cond_b
    return-void
.end method

.method public setAutoRefresh(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$AdapterChangeListener;->autoRefresh:Z

    return-void
.end method
