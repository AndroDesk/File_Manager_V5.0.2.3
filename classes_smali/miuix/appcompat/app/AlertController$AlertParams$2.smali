.class Lmiuix/appcompat/app/AlertController$AlertParams$2;
.super Landroid/widget/CursorAdapter;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/app/AlertController$AlertParams;->createListView(Lmiuix/appcompat/app/AlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private final mIsCheckedIndex:I

.field private final mLabelIndex:I

.field public final synthetic this$0:Lmiuix/appcompat/app/AlertController$AlertParams;

.field public final synthetic val$dialog:Lmiuix/appcompat/app/AlertController;

.field public final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/AlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLandroid/widget/ListView;Lmiuix/appcompat/app/AlertController;)V
    .registers 7

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController$AlertParams$2;->this$0:Lmiuix/appcompat/app/AlertController$AlertParams;

    .line 3
    iput-object p5, p0, Lmiuix/appcompat/app/AlertController$AlertParams$2;->val$listView:Landroid/widget/ListView;

    .line 5
    iput-object p6, p0, Lmiuix/appcompat/app/AlertController$AlertParams$2;->val$dialog:Lmiuix/appcompat/app/AlertController;

    .line 7
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 10
    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    .line 13
    move-result-object p2

    .line 14
    iget-object p3, p1, Lmiuix/appcompat/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 16
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 19
    move-result p3

    .line 20
    iput p3, p0, Lmiuix/appcompat/app/AlertController$AlertParams$2;->mLabelIndex:I

    .line 22
    iget-object p1, p1, Lmiuix/appcompat/app/AlertController$AlertParams;->mIsCheckedColumn:Ljava/lang/String;

    .line 24
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 27
    move-result p1

    .line 28
    iput p1, p0, Lmiuix/appcompat/app/AlertController$AlertParams$2;->mIsCheckedIndex:I

    .line 30
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 5

    .line 1
    const p2, 0x1020014

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Landroid/widget/CheckedTextView;

    .line 10
    iget p2, p0, Lmiuix/appcompat/app/AlertController$AlertParams$2;->mLabelIndex:I

    .line 12
    invoke-interface {p3, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController$AlertParams$2;->val$listView:Landroid/widget/ListView;

    .line 21
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    .line 24
    move-result p2

    .line 25
    iget v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams$2;->mIsCheckedIndex:I

    .line 27
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 30
    move-result p3

    .line 31
    const/4 v0, 0x1

    .line 32
    if-ne p3, v0, :cond_22

    .line 34
    goto :goto_23

    .line 35
    :cond_22
    const/4 v0, 0x0

    .line 36
    :goto_23
    invoke-virtual {p1, p2, v0}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 39
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController$AlertParams$2;->this$0:Lmiuix/appcompat/app/AlertController$AlertParams;

    .line 3
    iget-object p1, p1, Lmiuix/appcompat/app/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    .line 5
    iget-object p2, p0, Lmiuix/appcompat/app/AlertController$AlertParams$2;->val$dialog:Lmiuix/appcompat/app/AlertController;

    .line 7
    iget p2, p2, Lmiuix/appcompat/app/AlertController;->mMultiChoiceItemLayout:I

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 13
    move-result-object p1

    .line 14
    invoke-static {p1, v0}, Lmiuix/view/CompatViewMethod;->setForceDarkAllowed(Landroid/view/View;Z)V

    .line 17
    return-object p1
.end method
