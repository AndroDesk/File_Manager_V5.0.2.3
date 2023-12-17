.class Lmiuix/appcompat/app/AlertController$AlertParams$5;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/app/AlertController$AlertParams;->createListView(Lmiuix/appcompat/app/AlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/appcompat/app/AlertController$AlertParams;

.field public final synthetic val$dialog:Lmiuix/appcompat/app/AlertController;

.field public final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/AlertController$AlertParams;Landroid/widget/ListView;Lmiuix/appcompat/app/AlertController;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController$AlertParams$5;->this$0:Lmiuix/appcompat/app/AlertController$AlertParams;

    .line 3
    iput-object p2, p0, Lmiuix/appcompat/app/AlertController$AlertParams$5;->val$listView:Landroid/widget/ListView;

    .line 5
    iput-object p3, p0, Lmiuix/appcompat/app/AlertController$AlertParams$5;->val$dialog:Lmiuix/appcompat/app/AlertController;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController$AlertParams$5;->this$0:Lmiuix/appcompat/app/AlertController$AlertParams;

    .line 3
    iget-object p1, p1, Lmiuix/appcompat/app/AlertController$AlertParams;->mCheckedItems:[Z

    .line 5
    if-eqz p1, :cond_e

    .line 7
    iget-object p2, p0, Lmiuix/appcompat/app/AlertController$AlertParams$5;->val$listView:Landroid/widget/ListView;

    .line 9
    invoke-virtual {p2, p3}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    .line 12
    move-result p2

    .line 13
    aput-boolean p2, p1, p3

    .line 15
    :cond_e
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController$AlertParams$5;->this$0:Lmiuix/appcompat/app/AlertController$AlertParams;

    .line 17
    iget-object p1, p1, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 19
    iget-object p2, p0, Lmiuix/appcompat/app/AlertController$AlertParams$5;->val$dialog:Lmiuix/appcompat/app/AlertController;

    .line 21
    iget-object p2, p2, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/q;

    .line 23
    iget-object p4, p0, Lmiuix/appcompat/app/AlertController$AlertParams$5;->val$listView:Landroid/widget/ListView;

    .line 25
    invoke-virtual {p4, p3}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    .line 28
    move-result p4

    .line 29
    invoke-interface {p1, p2, p3, p4}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    .line 32
    return-void
.end method
