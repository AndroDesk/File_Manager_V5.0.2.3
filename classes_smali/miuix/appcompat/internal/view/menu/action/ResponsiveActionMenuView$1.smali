.class Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$1;
.super Landroid/view/ViewOutlineProvider;
.source "ResponsiveActionMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$1;->this$0:Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    .line 3
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .registers 9

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 4
    move-result v3

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 8
    move-result v4

    .line 9
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$1;->this$0:Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    .line 11
    invoke-static {p1}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->access$000(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;)I

    .line 14
    move-result p1

    .line 15
    int-to-float v5, p1

    .line 16
    const/4 v1, 0x0

    .line 17
    const/4 v2, 0x0

    .line 18
    move-object v0, p2

    .line 19
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 22
    return-void
.end method
