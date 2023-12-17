.class public final synthetic Lmiuix/internal/widget/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lmiuix/internal/widget/ListPopup$1;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/internal/widget/ListPopup$1;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/internal/widget/a;->a:Lmiuix/internal/widget/ListPopup$1;

    iput-object p2, p0, Lmiuix/internal/widget/a;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lmiuix/internal/widget/a;->a:Lmiuix/internal/widget/ListPopup$1;

    iget-object v1, p0, Lmiuix/internal/widget/a;->b:Landroid/view/View;

    invoke-static {v0, v1}, Lmiuix/internal/widget/ListPopup$1;->a(Lmiuix/internal/widget/ListPopup$1;Landroid/view/View;)V

    return-void
.end method
