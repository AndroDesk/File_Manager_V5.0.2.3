.class Lmiuix/appcompat/internal/app/widget/ActionBarView$10;
.super Ljava/lang/Object;
.source "ActionBarView.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$10;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 1
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$10;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 3
    invoke-static {p2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$800(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Ljava/lang/CharSequence;

    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p2

    .line 11
    if-nez p2, :cond_11

    .line 13
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$10;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 15
    invoke-static {p2, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$902(Lmiuix/appcompat/internal/app/widget/ActionBarView;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 18
    :cond_11
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$10;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 20
    invoke-static {p2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$1000(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    .line 23
    move-result-object p2

    .line 24
    if-eqz p2, :cond_22

    .line 26
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$10;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 28
    invoke-static {p2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$1000(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {p2, p1}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setTitle(Ljava/lang/CharSequence;)V

    .line 35
    :cond_22
    return-void
.end method
