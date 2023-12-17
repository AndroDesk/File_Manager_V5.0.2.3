.class Lcom/android/fileexplorer/view/aosp/TabLayout$PagerAdapterObserver;
.super Landroid/database/DataSetObserver;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/view/aosp/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PagerAdapterObserver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/view/aosp/TabLayout;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/view/aosp/TabLayout;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$PagerAdapterObserver;->this$0:Lcom/android/fileexplorer/view/aosp/TabLayout;

    .line 3
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$PagerAdapterObserver;->this$0:Lcom/android/fileexplorer/view/aosp/TabLayout;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/aosp/TabLayout;->populateFromPagerAdapter()V

    .line 6
    return-void
.end method

.method public onInvalidated()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$PagerAdapterObserver;->this$0:Lcom/android/fileexplorer/view/aosp/TabLayout;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/aosp/TabLayout;->populateFromPagerAdapter()V

    .line 6
    return-void
.end method
