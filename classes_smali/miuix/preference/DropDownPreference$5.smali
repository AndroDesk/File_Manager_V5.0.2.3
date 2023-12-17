.class Lmiuix/preference/DropDownPreference$5;
.super Ljava/lang/Object;
.source "DropDownPreference.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/preference/DropDownPreference;->onBindViewHolder(Landroidx/preference/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/preference/DropDownPreference;

.field public final synthetic val$view:Landroidx/preference/h;


# direct methods
.method public constructor <init>(Lmiuix/preference/DropDownPreference;Landroidx/preference/h;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/preference/DropDownPreference$5;->this$0:Lmiuix/preference/DropDownPreference;

    .line 3
    iput-object p2, p0, Lmiuix/preference/DropDownPreference$5;->val$view:Landroidx/preference/h;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-ne v0, v1, :cond_4d

    .line 9
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 12
    move-result v0

    .line 13
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 16
    move-result p2

    .line 17
    iget-object v3, p0, Lmiuix/preference/DropDownPreference$5;->this$0:Lmiuix/preference/DropDownPreference;

    .line 19
    invoke-static {v3}, Lmiuix/preference/DropDownPreference;->access$400(Lmiuix/preference/DropDownPreference;)Lmiuix/appcompat/widget/Spinner;

    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v3, p1}, Lmiuix/appcompat/widget/Spinner;->setFenceXFromView(Landroid/view/View;)V

    .line 26
    iget-object p1, p0, Lmiuix/preference/DropDownPreference$5;->this$0:Lmiuix/preference/DropDownPreference;

    .line 28
    invoke-static {p1}, Lmiuix/preference/DropDownPreference;->access$400(Lmiuix/preference/DropDownPreference;)Lmiuix/appcompat/widget/Spinner;

    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1, v0, p2}, Lmiuix/appcompat/widget/Spinner;->performClick(FF)Z

    .line 35
    iget-object p1, p0, Lmiuix/preference/DropDownPreference$5;->val$view:Landroidx/preference/h;

    .line 37
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 39
    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 42
    iget-object p1, p0, Lmiuix/preference/DropDownPreference$5;->val$view:Landroidx/preference/h;

    .line 44
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 46
    const p2, 0x1020016

    .line 49
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Landroid/widget/TextView;

    .line 55
    if-eqz p1, :cond_3b

    .line 57
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 60
    :cond_3b
    iget-object p1, p0, Lmiuix/preference/DropDownPreference$5;->val$view:Landroidx/preference/h;

    .line 62
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 64
    const p2, 0x1020010

    .line 67
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    move-result-object p1

    .line 71
    check-cast p1, Landroid/widget/TextView;

    .line 73
    if-eqz p1, :cond_4d

    .line 75
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 78
    :cond_4d
    return v2
.end method
