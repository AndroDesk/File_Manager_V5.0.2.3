.class public Lcom/android/fileexplorer/widget/bean/WidgetFileItem;
.super Ljava/lang/Object;
.source "WidgetFileItem.java"


# instance fields
.field private filePath:Ljava/lang/String;

.field private iconRes:I

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p1, p0, Lcom/android/fileexplorer/widget/bean/WidgetFileItem;->iconRes:I

    .line 7
    iput-object p2, p0, Lcom/android/fileexplorer/widget/bean/WidgetFileItem;->text:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/fileexplorer/widget/bean/WidgetFileItem;->iconRes:I

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/widget/bean/WidgetFileItem;->text:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/android/fileexplorer/widget/bean/WidgetFileItem;->filePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFilePath()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/widget/bean/WidgetFileItem;->filePath:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getIconRes()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/widget/bean/WidgetFileItem;->iconRes:I

    .line 3
    return v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/widget/bean/WidgetFileItem;->text:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public setFilePath(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/widget/bean/WidgetFileItem;->filePath:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setIconRes(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/widget/bean/WidgetFileItem;->iconRes:I

    .line 3
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/widget/bean/WidgetFileItem;->text:Ljava/lang/String;

    .line 3
    return-void
.end method
