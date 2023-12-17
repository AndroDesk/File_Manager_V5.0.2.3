.class public final synthetic Lcom/android/fileexplorer/pad/fragment/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Landroid/view/View;I)V
    .registers 5

    iput p4, p0, Lcom/android/fileexplorer/pad/fragment/a;->a:I

    iput-object p1, p0, Lcom/android/fileexplorer/pad/fragment/a;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/fileexplorer/pad/fragment/a;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/fileexplorer/pad/fragment/a;->d:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget v0, p0, Lcom/android/fileexplorer/pad/fragment/a;->a:I

    packed-switch v0, :pswitch_data_46

    goto :goto_36

    :pswitch_6  #0x2
    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/a;->b:Ljava/lang/Object;

    check-cast v0, Lmiuix/navigator/adapter/MenuCategoryAdapter;

    iget-object v1, p0, Lcom/android/fileexplorer/pad/fragment/a;->c:Ljava/lang/Object;

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$b0;

    iget-object v2, p0, Lcom/android/fileexplorer/pad/fragment/a;->d:Landroid/view/View;

    check-cast v2, Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-static {v0, v1, v2, p1}, Lmiuix/navigator/adapter/MenuCategoryAdapter;->a(Lmiuix/navigator/adapter/MenuCategoryAdapter;Landroidx/recyclerview/widget/RecyclerView$b0;Lmiuix/slidingwidget/widget/SlidingButton;Landroid/view/View;)V

    return-void

    :pswitch_16  #0x1
    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/a;->b:Ljava/lang/Object;

    check-cast v0, Lmiuix/navigator/adapter/ListCategoryAdapter;

    iget-object v1, p0, Lcom/android/fileexplorer/pad/fragment/a;->c:Ljava/lang/Object;

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$b0;

    iget-object v2, p0, Lcom/android/fileexplorer/pad/fragment/a;->d:Landroid/view/View;

    check-cast v2, Landroid/widget/CheckBox;

    invoke-static {v0, v1, v2, p1}, Lmiuix/navigator/adapter/ListCategoryAdapter;->e(Lmiuix/navigator/adapter/ListCategoryAdapter;Landroidx/recyclerview/widget/RecyclerView$b0;Landroid/widget/CheckBox;Landroid/view/View;)V

    return-void

    :pswitch_26  #0x0
    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;

    iget-object v1, p0, Lcom/android/fileexplorer/pad/fragment/a;->c:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/android/fileexplorer/pad/fragment/a;->d:Landroid/view/View;

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, p1}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->c(Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;Landroid/view/View;Landroid/widget/ImageView;Landroid/view/View;)V

    return-void

    :goto_36
    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/a;->b:Ljava/lang/Object;

    check-cast v0, Lmiuix/preference/StretchablePickerPreference;

    iget-object v1, p0, Lcom/android/fileexplorer/pad/fragment/a;->c:Ljava/lang/Object;

    check-cast v1, Lmiuix/slidingwidget/widget/SlidingButton;

    iget-object v2, p0, Lcom/android/fileexplorer/pad/fragment/a;->d:Landroid/view/View;

    check-cast v2, Lmiuix/pickerwidget/widget/DateTimePicker;

    invoke-static {v0, v1, v2, p1}, Lmiuix/preference/StretchablePickerPreference;->a(Lmiuix/preference/StretchablePickerPreference;Lmiuix/slidingwidget/widget/SlidingButton;Lmiuix/pickerwidget/widget/DateTimePicker;Landroid/view/View;)V

    return-void

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_26  #00000000
        :pswitch_16  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
