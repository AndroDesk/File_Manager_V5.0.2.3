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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/view/aosp/TabLayout;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$PagerAdapterObserver;->this$0:Lcom/android/fileexplorer/view/aosp/TabLayout;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$PagerAdapterObserver;->this$0:Lcom/android/fileexplorer/view/aosp/TabLayout;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/aosp/TabLayout;->populateFromPagerAdapter()V

    return-void
.end method

.method public onInvalidated()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$PagerAdapterObserver;->this$0:Lcom/android/fileexplorer/view/aosp/TabLayout;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/aosp/TabLayout;->populateFromPagerAdapter()V

    return-void
.end method
