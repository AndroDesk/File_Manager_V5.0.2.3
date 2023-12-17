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
.method public constructor <init>(Lcom/android/fileexplorer/model/StringNaturalOrderComparator;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/model/StringNaturalOrderComparator$OperandData;->this$0:Lcom/android/fileexplorer/model/StringNaturalOrderComparator;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p2, p0, Lcom/android/fileexplorer/model/StringNaturalOrderComparator$OperandData;->str:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method public getChar()C
    .registers 3

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/model/StringNaturalOrderComparator$OperandData;->ptr:I

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/model/StringNaturalOrderComparator$OperandData;->str:Ljava/lang/String;

    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 8
    move-result v1

    .line 9
    if-ge v0, v1, :cond_13

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/model/StringNaturalOrderComparator$OperandData;->str:Ljava/lang/String;

    .line 13
    iget v1, p0, Lcom/android/fileexplorer/model/StringNaturalOrderComparator$OperandData;->ptr:I

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 18
    move-result v0

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    const/4 v0, 0x0

    .line 21
    :goto_14
    return v0
.end method
