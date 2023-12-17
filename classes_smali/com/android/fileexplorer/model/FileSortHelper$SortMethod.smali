.class public final enum Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;
.super Ljava/lang/Enum;
.source "FileSortHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/model/FileSortHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SortMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

.field public static final enum DATE:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

.field public static final enum NAME:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

.field public static final enum SIZE_ASC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

.field public static final enum SIZE_DESC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

.field public static final enum TIME:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

.field public static final enum TYPE:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;


# direct methods
.method public static constructor <clinit>()V
    .registers 13

    new-instance v0, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    const-string v1, "NAME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->NAME:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    new-instance v1, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    const-string v3, "SIZE_DESC"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_DESC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    new-instance v3, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    const-string v5, "SIZE_ASC"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_ASC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    new-instance v5, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    const-string v7, "TYPE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->TYPE:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    new-instance v7, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    const-string v9, "DATE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->DATE:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    new-instance v9, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    const-string v11, "TIME"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->TIME:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->$VALUES:[Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

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

.method public static getInt(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)I
    .registers 1

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    return p0
.end method

.method public static valueOf(I)Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;
    .registers 2

    if-ltz p0, :cond_11

    invoke-static {}, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->values()[Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    move-result-object v0

    array-length v0, v0

    if-lt p0, v0, :cond_a

    goto :goto_11

    :cond_a
    invoke-static {}, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->values()[Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0

    :cond_11
    :goto_11
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;
    .registers 2

    const-class v0, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    return-object p0
.end method

.method public static values()[Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;
    .registers 1

    sget-object v0, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->$VALUES:[Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    invoke-virtual {v0}, [Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    return-object v0
.end method
