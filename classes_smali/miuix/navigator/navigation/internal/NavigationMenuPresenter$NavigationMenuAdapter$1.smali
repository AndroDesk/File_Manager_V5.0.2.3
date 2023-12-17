.class Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter$1;
.super Lm0/a;
.source "NavigationMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setAccessibilityDelegate(Landroid/view/View;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;

.field public final synthetic val$isHeader:Z

.field public final synthetic val$position:I


# direct methods
.method public constructor <init>(Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;IZ)V
    .registers 4

    .line 1
    iput-object p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter$1;->this$1:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    .line 3
    iput p2, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter$1;->val$position:I

    .line 5
    iput-boolean p3, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter$1;->val$isHeader:Z

    .line 7
    invoke-direct {p0}, Lm0/a;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Ln0/c;)V
    .registers 11

    .line 1
    invoke-super {p0, p1, p2}, Lm0/a;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Ln0/c;)V

    .line 4
    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter$1;->this$1:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    .line 6
    iget v1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter$1;->val$position:I

    .line 8
    invoke-static {v0, v1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->access$100(Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;I)I

    .line 11
    move-result v2

    .line 12
    iget-boolean v6, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter$1;->val$isHeader:Z

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    .line 17
    move-result v7

    .line 18
    const/4 v3, 0x1

    .line 19
    const/4 v4, 0x1

    .line 20
    const/4 v5, 0x1

    .line 21
    invoke-static/range {v2 .. v7}, Ln0/c$d;->a(IIIIZZ)Ln0/c$d;

    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p2, p1}, Ln0/c;->k(Ln0/c$d;)V

    .line 28
    return-void
.end method
