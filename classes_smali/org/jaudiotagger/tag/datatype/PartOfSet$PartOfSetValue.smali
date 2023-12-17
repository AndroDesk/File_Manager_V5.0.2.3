.class public Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;
.super Ljava/lang/Object;
.source "PartOfSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jaudiotagger/tag/datatype/PartOfSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PartOfSetValue"
.end annotation


# static fields
.field private static final SEPARATOR:Ljava/lang/String; = "/"

.field private static final trackNoPattern:Ljava/util/regex/Pattern;

.field private static final trackNoPatternWithTotalCount:Ljava/util/regex/Pattern;


# instance fields
.field private count:Ljava/lang/Integer;

.field private extra:Ljava/lang/String;

.field private total:Ljava/lang/Integer;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    const-string v0, "([0-9]+)/([0-9]+)(.*)"

    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->trackNoPatternWithTotalCount:Ljava/util/regex/Pattern;

    .line 10
    const-string v0, "([0-9]+)(.*)"

    .line 12
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->trackNoPattern:Ljava/util/regex/Pattern;

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->count:Ljava/lang/Integer;

    .line 14
    iput-object p2, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->total:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 6

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->trackNoPatternWithTotalCount:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_35

    .line 5
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->count:Ljava/lang/Integer;

    .line 6
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->total:Ljava/lang/Integer;

    const/4 p1, 0x3

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->extra:Ljava/lang/String;

    return-void

    .line 8
    :cond_35
    sget-object v0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->trackNoPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 10
    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->count:Ljava/lang/Integer;

    .line 11
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->extra:Ljava/lang/String;

    :cond_55
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    instance-of v1, p1, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_a

    .line 10
    return v2

    .line 11
    :cond_a
    check-cast p1, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;

    .line 13
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->getCount()Ljava/lang/Integer;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->getCount()Ljava/lang/Integer;

    .line 20
    move-result-object v3

    .line 21
    invoke-static {v1, v3}, Lorg/jaudiotagger/utils/EqualsUtil;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_29

    .line 27
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->getTotal()Ljava/lang/Integer;

    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->getTotal()Ljava/lang/Integer;

    .line 34
    move-result-object p1

    .line 35
    invoke-static {v1, p1}, Lorg/jaudiotagger/utils/EqualsUtil;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_29

    .line 41
    goto :goto_2a

    .line 42
    :cond_29
    move v0, v2

    .line 43
    :goto_2a
    return v0
.end method

.method public getCount()Ljava/lang/Integer;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->count:Ljava/lang/Integer;

    .line 3
    return-object v0
.end method

.method public getTotal()Ljava/lang/Integer;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->total:Ljava/lang/Integer;

    .line 3
    return-object v0
.end method

.method public setCount(Ljava/lang/Integer;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->count:Ljava/lang/Integer;

    return-void
.end method

.method public setCount(Ljava/lang/String;)V
    .registers 2

    .line 2
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->count:Ljava/lang/Integer;
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_a} :catch_a

    :catch_a
    return-void
.end method

.method public setTotal(Ljava/lang/Integer;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->total:Ljava/lang/Integer;

    return-void
.end method

.method public setTotal(Ljava/lang/String;)V
    .registers 2

    .line 2
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->total:Ljava/lang/Integer;
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_a} :catch_a

    :catch_a
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 6
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isPadNumbers()Z

    .line 13
    move-result v1

    .line 14
    const-string v2, "/"

    .line 16
    const/16 v3, 0x30

    .line 18
    if-nez v1, :cond_3a

    .line 20
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->count:Ljava/lang/Integer;

    .line 22
    if-eqz v1, :cond_1f

    .line 24
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 27
    move-result v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 31
    goto :goto_26

    .line 32
    :cond_1f
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->total:Ljava/lang/Integer;

    .line 34
    if-eqz v1, :cond_26

    .line 36
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 39
    :cond_26
    :goto_26
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->total:Ljava/lang/Integer;

    .line 41
    if-eqz v1, :cond_32

    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->total:Ljava/lang/Integer;

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 51
    :cond_32
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->extra:Ljava/lang/String;

    .line 53
    if-eqz v1, :cond_96

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    goto :goto_96

    .line 59
    :cond_3a
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->count:Ljava/lang/Integer;

    .line 61
    const/16 v4, 0xa

    .line 63
    if-eqz v1, :cond_63

    .line 65
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 68
    move-result v1

    .line 69
    if-lez v1, :cond_59

    .line 71
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->count:Ljava/lang/Integer;

    .line 73
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 76
    move-result v1

    .line 77
    if-ge v1, v4, :cond_59

    .line 79
    const-string v1, "0"

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->count:Ljava/lang/Integer;

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 89
    goto :goto_6a

    .line 90
    :cond_59
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->count:Ljava/lang/Integer;

    .line 92
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 95
    move-result v1

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 99
    goto :goto_6a

    .line 100
    :cond_63
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->total:Ljava/lang/Integer;

    .line 102
    if-eqz v1, :cond_6a

    .line 104
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 107
    :cond_6a
    :goto_6a
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->total:Ljava/lang/Integer;

    .line 109
    if-eqz v1, :cond_8f

    .line 111
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 114
    move-result v1

    .line 115
    if-lez v1, :cond_87

    .line 117
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->total:Ljava/lang/Integer;

    .line 119
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 122
    move-result v1

    .line 123
    if-ge v1, v4, :cond_87

    .line 125
    const-string v1, "/0"

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->total:Ljava/lang/Integer;

    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 135
    goto :goto_8f

    .line 136
    :cond_87
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->total:Ljava/lang/Integer;

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 144
    :cond_8f
    :goto_8f
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->extra:Ljava/lang/String;

    .line 146
    if-eqz v1, :cond_96

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    :cond_96
    :goto_96
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 154
    move-result-object v0

    .line 155
    return-object v0
.end method
