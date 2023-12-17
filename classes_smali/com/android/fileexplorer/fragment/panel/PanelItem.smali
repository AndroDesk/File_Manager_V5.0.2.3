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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/fileexplorer/fragment/panel/PanelItem;->displayType:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/fileexplorer/fragment/panel/PanelItem;->isChecked:Z

    iput v0, p0, Lcom/android/fileexplorer/fragment/panel/PanelItem;->spinnerSelectedPos:I

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/panel/PanelItem;->itemType:Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;

    iput p2, p0, Lcom/android/fileexplorer/fragment/panel/PanelItem;->titleResId:I

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;III)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/panel/PanelItem;->isChecked:Z

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/panel/PanelItem;->itemType:Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;

    iput p2, p0, Lcom/android/fileexplorer/fragment/panel/PanelItem;->titleResId:I

    iput p3, p0, Lcom/android/fileexplorer/fragment/panel/PanelItem;->displayType:I

    iput p4, p0, Lcom/android/fileexplorer/fragment/panel/PanelItem;->spinnerSelectedPos:I

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;IIZ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/fileexplorer/fragment/panel/PanelItem;->spinnerSelectedPos:I

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/panel/PanelItem;->itemType:Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;

    iput p2, p0, Lcom/android/fileexplorer/fragment/panel/PanelItem;->titleResId:I

    iput p3, p0, Lcom/android/fileexplorer/fragment/panel/PanelItem;->displayType:I

    iput-boolean p4, p0, Lcom/android/fileexplorer/fragment/panel/PanelItem;->isChecked:Z

    return-void
.end method


# virtual methods
.method public getDisplayType()I
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/fragment/panel/PanelItem;->displayType:I

    return v0
.end method

.method public getItemType()Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/panel/PanelItem;->itemType:Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;

    return-object v0
.end method

.method public getSpinnerSelectedPos()I
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/fragment/panel/PanelItem;->spinnerSelectedPos:I

    return v0
.end method

.method public getTitleResId()I
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/fragment/panel/PanelItem;->titleResId:I

    return v0
.end method

.method public isChecked()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/panel/PanelItem;->isChecked:Z

    return v0
.end method

.method public setChecked(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/fragment/panel/PanelItem;->isChecked:Z

    return-void
.end method

.method public setSpinnerSelectedPos(I)V
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/fragment/panel/PanelItem;->spinnerSelectedPos:I

    return-void
.end method
