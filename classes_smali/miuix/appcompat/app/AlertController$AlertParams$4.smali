.class Lmiuix/appcompat/app/AlertController$AlertParams$4;
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


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/AlertController$AlertParams;Lmiuix/appcompat/app/AlertController;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController$AlertParams$4;->this$0:Lmiuix/appcompat/app/AlertController$AlertParams;

    .line 3
    iput-object p2, p0, Lmiuix/appcompat/app/AlertController$AlertParams$4;->val$dialog:Lmiuix/appcompat/app/AlertController;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
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
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController$AlertParams$4;->this$0:Lmiuix/appcompat/app/AlertController$AlertParams;

    .line 3
    iget-object p1, p1, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 5
    iget-object p2, p0, Lmiuix/appcompat/app/AlertController$AlertParams$4;->val$dialog:Lmiuix/appcompat/app/AlertController;

    .line 7
    iget-object p2, p2, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/q;

    .line 9
    invoke-interface {p1, p2, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 12
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController$AlertParams$4;->this$0:Lmiuix/appcompat/app/AlertController$AlertParams;

    .line 14
    iget-boolean p1, p1, Lmiuix/appcompat/app/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 16
    if-nez p1, :cond_18

    .line 18
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController$AlertParams$4;->val$dialog:Lmiuix/appcompat/app/AlertController;

    .line 20
    iget-object p1, p1, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/q;

    .line 22
    invoke-virtual {p1}, Landroidx/appcompat/app/q;->dismiss()V

    .line 25
    :cond_18
    return-void
.end method
