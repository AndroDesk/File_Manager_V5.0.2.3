.class public Lcom/android/fileexplorer/widget/bean/WidgetFileItem;
.super Ljava/lang/Object;
.source "WidgetFileItem.java"


# instance fields
.field private filePath:Ljava/lang/String;

.field private iconRes:I

.field private text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/fileexplorer/widget/bean/WidgetFileItem;->iconRes:I

    iput-object p2, p0, Lcom/android/fileexplorer/widget/bean/WidgetFileItem;->text:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/fileexplorer/widget/bean/WidgetFileItem;->iconRes:I

    iput-object p2, p0, Lcom/android/fileexplorer/widget/bean/WidgetFileItem;->text:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/fileexplorer/widget/bean/WidgetFileItem;->filePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFilePath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/widget/bean/WidgetFileItem;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getIconRes()I
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/widget/bean/WidgetFileItem;->iconRes:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/widget/bean/WidgetFileItem;->text:Ljava/lang/String;

    return-object v0
.end method

.method public setFilePath(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/widget/bean/WidgetFileItem;->filePath:Ljava/lang/String;

    return-void
.end method

.method public setIconRes(I)V
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/widget/bean/WidgetFileItem;->iconRes:I

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/widget/bean/WidgetFileItem;->text:Ljava/lang/String;

    return-void
.end method
