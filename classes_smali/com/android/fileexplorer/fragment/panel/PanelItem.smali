.class public Lcom/android/fileexplorer/fragment/panel/PanelItem;
.super Ljava/lang/Object;
.source "PanelItem.java"


# instance fields
.field private displayType:I

.field private isChecked:Z

.field private itemType:Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;

.field private spinnerSelectedPos:I

.field private titleResId:I


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;I)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/fileexplorer/fragment/panel/PanelItem;->displayType:I

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/android/fileexplorer/fragment/panel/PanelItem;->isChecked:Z

    .line 4
    iput v0, p0, Lcom/android/fileexplorer/fragment/panel/PanelItem;->spinnerSelectedPos:I

    .line 5
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/panel/PanelItem;->itemType:Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;

    .line 6
    iput p2, p0, Lcom/android/fileexplorer/fragment/panel/PanelItem;->titleResId:I

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;III)V
    .registers 6

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/panel/PanelItem;->isChecked:Z

    .line 15
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/panel/PanelItem;->itemType:Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;

    .line 16
    iput p2, p0, Lcom/android/fileexplorer/fragment/panel/PanelItem;->titleResId:I

    .line 17
    iput p3, p0, Lcom/android/fileexplorer/fragment/panel/PanelItem;->displayType:I

    .line 18
    iput p4, p0, Lcom/android/fileexplorer/fragment/panel/PanelItem;->spinnerSelectedPos:I

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;IIZ)V
    .registers 6

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/android/fileexplorer/fragment/panel/PanelItem;->spinnerSelectedPos:I

    .line 9
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/panel/PanelItem;->itemType:Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;

    .line 10
    iput p2, p0, Lcom/android/fileexplorer/fragment/panel/PanelItem;->titleResId:I

    .line 11
    iput p3, p0, Lcom/android/fileexplorer/fragment/panel/PanelItem;->displayType:I

    .line 12
    iput-boolean p4, p0, Lcom/android/fileexplorer/fragment/panel/PanelItem;->isChecked:Z

    return-void
.end method


# virtual methods
.method public getDisplayType()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/fragment/panel/PanelItem;->displayType:I

    .line 3
    return v0
.end method

.method public getItemType()Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/panel/PanelItem;->itemType:Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;

    .line 3
    return-object v0
.end method

.method public getSpinnerSelectedPos()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/fragment/panel/PanelItem;->spinnerSelectedPos:I

    .line 3
    return v0
.end method

.method public getTitleResId()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/fragment/panel/PanelItem;->titleResId:I

    .line 3
    return v0
.end method

.method public isChecked()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/panel/PanelItem;->isChecked:Z

    .line 3
    return v0
.end method

.method public setChecked(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/fragment/panel/PanelItem;->isChecked:Z

    .line 3
    return-void
.end method

.method public setSpinnerSelectedPos(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/fragment/panel/PanelItem;->spinnerSelectedPos:I

    .line 3
    return-void
.end method
