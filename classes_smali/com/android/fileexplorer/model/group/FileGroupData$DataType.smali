.class public final enum Lcom/android/fileexplorer/model/group/FileGroupData$DataType;
.super Ljava/lang/Enum;
.source "FileGroupData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/model/group/FileGroupData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/fileexplorer/model/group/FileGroupData$DataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/fileexplorer/model/group/FileGroupData$DataType;

.field public static final enum Child:Lcom/android/fileexplorer/model/group/FileGroupData$DataType;

.field public static final enum Children:Lcom/android/fileexplorer/model/group/FileGroupData$DataType;

.field public static final enum Divider:Lcom/android/fileexplorer/model/group/FileGroupData$DataType;

.field public static final enum Parent:Lcom/android/fileexplorer/model/group/FileGroupData$DataType;


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    new-instance v0, Lcom/android/fileexplorer/model/group/FileGroupData$DataType;

    const-string v1, "Child"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/fileexplorer/model/group/FileGroupData$DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/fileexplorer/model/group/FileGroupData$DataType;->Child:Lcom/android/fileexplorer/model/group/FileGroupData$DataType;

    new-instance v1, Lcom/android/fileexplorer/model/group/FileGroupData$DataType;

    const-string v3, "Children"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/fileexplorer/model/group/FileGroupData$DataType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/fileexplorer/model/group/FileGroupData$DataType;->Children:Lcom/android/fileexplorer/model/group/FileGroupData$DataType;

    new-instance v3, Lcom/android/fileexplorer/model/group/FileGroupData$DataType;

    const-string v5, "Parent"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/fileexplorer/model/group/FileGroupData$DataType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/fileexplorer/model/group/FileGroupData$DataType;->Parent:Lcom/android/fileexplorer/model/group/FileGroupData$DataType;

    new-instance v5, Lcom/android/fileexplorer/model/group/FileGroupData$DataType;

    const-string v7, "Divider"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/fileexplorer/model/group/FileGroupData$DataType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/fileexplorer/model/group/FileGroupData$DataType;->Divider:Lcom/android/fileexplorer/model/group/FileGroupData$DataType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/android/fileexplorer/model/group/FileGroupData$DataType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/android/fileexplorer/model/group/FileGroupData$DataType;->$VALUES:[Lcom/android/fileexplorer/model/group/FileGroupData$DataType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/fileexplorer/model/group/FileGroupData$DataType;
    .registers 2

    const-class v0, Lcom/android/fileexplorer/model/group/FileGroupData$DataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/fileexplorer/model/group/FileGroupData$DataType;

    return-object p0
.end method

.method public static values()[Lcom/android/fileexplorer/model/group/FileGroupData$DataType;
    .registers 1

    sget-object v0, Lcom/android/fileexplorer/model/group/FileGroupData$DataType;->$VALUES:[Lcom/android/fileexplorer/model/group/FileGroupData$DataType;

    invoke-virtual {v0}, [Lcom/android/fileexplorer/model/group/FileGroupData$DataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/fileexplorer/model/group/FileGroupData$DataType;

    return-object v0
.end method
