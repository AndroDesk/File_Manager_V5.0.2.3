.class Lmiuix/appcompat/internal/app/widget/ActionBarView$5;
.super Ljava/lang/Object;
.source "ActionBarView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$5;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$5;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 3
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$400(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroidx/appcompat/app/a$c;

    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_11

    .line 9
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$5;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 11
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$400(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroidx/appcompat/app/a$c;

    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Landroidx/appcompat/app/a$c;->a()Z

    .line 18
    :cond_11
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
