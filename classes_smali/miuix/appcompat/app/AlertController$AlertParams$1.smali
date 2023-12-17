.class Lmiuix/appcompat/app/AlertController$AlertParams$1;
.super Landroid/widget/ArrayAdapter;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/app/AlertController$AlertParams;->createListView(Lmiuix/appcompat/app/AlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/appcompat/app/AlertController$AlertParams;

.field public final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/AlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Landroid/widget/ListView;)V
    .registers 7

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController$AlertParams$1;->this$0:Lmiuix/appcompat/app/AlertController$AlertParams;

    .line 3
    iput-object p6, p0, Lmiuix/appcompat/app/AlertController$AlertParams$1;->val$listView:Landroid/widget/ListView;

    .line 5
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 8
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    move-result-object p2

    .line 5
    iget-object p3, p0, Lmiuix/appcompat/app/AlertController$AlertParams$1;->this$0:Lmiuix/appcompat/app/AlertController$AlertParams;

    .line 7
    iget-object p3, p3, Lmiuix/appcompat/app/AlertController$AlertParams;->mCheckedItems:[Z

    .line 9
    if-eqz p3, :cond_14

    .line 11
    aget-boolean p3, p3, p1

    .line 13
    if-eqz p3, :cond_14

    .line 15
    iget-object p3, p0, Lmiuix/appcompat/app/AlertController$AlertParams$1;->val$listView:Landroid/widget/ListView;

    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-virtual {p3, p1, v0}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 21
    :cond_14
    const/4 p1, 0x0

    .line 22
    invoke-static {p2, p1}, Lmiuix/view/CompatViewMethod;->setForceDarkAllowed(Landroid/view/View;Z)V

    .line 25
    return-object p2
.end method
