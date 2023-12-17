.class Lcom/android/fileexplorer/model/StringNaturalOrderComparator$OperandData;
.super Ljava/lang/Object;
.source "StringNaturalOrderComparator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/model/StringNaturalOrderComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OperandData"
.end annotation


# instance fields
.field public ptr:I

.field private str:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/fileexplorer/model/StringNaturalOrderComparator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/model/StringNaturalOrderComparator;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/model/StringNaturalOrderComparator$OperandData;->this$0:Lcom/android/fileexplorer/model/StringNaturalOrderComparator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/fileexplorer/model/StringNaturalOrderComparator$OperandData;->str:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getChar()C
    .registers 3

    iget v0, p0, Lcom/android/fileexplorer/model/StringNaturalOrderComparator$OperandData;->ptr:I

    iget-object v1, p0, Lcom/android/fileexplorer/model/StringNaturalOrderComparator$OperandData;->str:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_13

    iget-object v0, p0, Lcom/android/fileexplorer/model/StringNaturalOrderComparator$OperandData;->str:Ljava/lang/String;

    iget v1, p0, Lcom/android/fileexplorer/model/StringNaturalOrderComparator$OperandData;->ptr:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method
