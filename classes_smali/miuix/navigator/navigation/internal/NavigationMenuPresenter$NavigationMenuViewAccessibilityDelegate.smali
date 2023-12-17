.class Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuViewAccessibilityDelegate;
.super Landroidx/recyclerview/widget/r;
.source "NavigationMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NavigationMenuViewAccessibilityDelegate"
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;


# direct methods
.method public constructor <init>(Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;Lmiuix/recyclerview/widget/RecyclerView;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuViewAccessibilityDelegate;->this$0:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    .line 3
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/r;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 6
    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Ln0/c;)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/r;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Ln0/c;)V

    .line 4
    iget-object p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuViewAccessibilityDelegate;->this$0:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    .line 6
    iget-object p1, p1, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->adapter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    .line 8
    invoke-virtual {p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->getRowCount()I

    .line 11
    move-result p1

    .line 12
    const/4 v0, 0x0

    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-static {p1, v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    .line 17
    move-result-object p1

    .line 18
    iget-object p2, p2, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 20
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 23
    return-void
.end method
