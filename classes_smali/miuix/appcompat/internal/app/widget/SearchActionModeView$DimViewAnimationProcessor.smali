.class Lmiuix/appcompat/internal/app/widget/SearchActionModeView$DimViewAnimationProcessor;
.super Ljava/lang/Object;
.source "SearchActionModeView.java"

# interfaces
.implements Lmiuix/view/ActionModeAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/SearchActionModeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DimViewAnimationProcessor"
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$DimViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onStart(Z)V
    .registers 3

    .line 1
    if-eqz p1, :cond_21

    .line 3
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$DimViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 5
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1600(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$DimViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$DimViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 16
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1600(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Landroid/view/View;

    .line 19
    move-result-object p1

    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 24
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$DimViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 26
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1600(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Landroid/view/View;

    .line 29
    move-result-object p1

    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 34
    :cond_21
    return-void
.end method

.method public onStop(Z)V
    .registers 3

    .line 1
    const/16 v0, 0x8

    .line 3
    if-eqz p1, :cond_1e

    .line 5
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$DimViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 7
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$100(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Landroid/widget/EditText;

    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 18
    move-result p1

    .line 19
    if-lez p1, :cond_3c

    .line 21
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$DimViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 23
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1600(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Landroid/view/View;

    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 30
    goto :goto_3c

    .line 31
    :cond_1e
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$DimViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 33
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1600(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Landroid/view/View;

    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 40
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$DimViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 42
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1600(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Landroid/view/View;

    .line 45
    move-result-object p1

    .line 46
    const/high16 v0, 0x3f800000  # 1.0f

    .line 48
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 51
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$DimViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 53
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1600(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Landroid/view/View;

    .line 56
    move-result-object p1

    .line 57
    const/4 v0, 0x0

    .line 58
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 61
    :cond_3c
    :goto_3c
    return-void
.end method

.method public onUpdate(ZF)V
    .registers 3

    .line 1
    if-eqz p1, :cond_3

    .line 3
    goto :goto_7

    .line 4
    :cond_3
    const/high16 p1, 0x3f800000  # 1.0f

    .line 6
    sub-float p2, p1, p2

    .line 8
    :goto_7
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$DimViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 10
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1600(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Landroid/view/View;

    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 17
    return-void
.end method
