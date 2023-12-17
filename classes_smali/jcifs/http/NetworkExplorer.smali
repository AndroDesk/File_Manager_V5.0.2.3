.class public Ljcifs/http/NetworkExplorer;
.super Ljavax/servlet/http/HttpServlet;
.source "NetworkExplorer.java"


# static fields
.field private static log:Ljcifs/util/LogStream;


# instance fields
.field private credentialsSupplied:Z

.field private defaultDomain:Ljava/lang/String;

.field private enableBasic:Z

.field private insecureBasic:Z

.field private mimeMap:Ljcifs/util/MimeMap;

.field private ntlmSsp:Ljcifs/http/NtlmSsp;

.field private realm:Ljava/lang/String;

.field private style:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Ljcifs/util/LogStream;->getInstance()Ljcifs/util/LogStream;

    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Ljcifs/http/NetworkExplorer;->log:Ljcifs/util/LogStream;

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljavax/servlet/http/HttpServlet;-><init>()V

    .line 4
    return-void
.end method

.method private parseServerAndShare(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 1
    const/16 v0, 0x100

    .line 3
    new-array v0, v0, [C

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez p1, :cond_8

    .line 8
    return-object v1

    .line 9
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    move v4, v3

    .line 15
    :goto_e
    const/16 v5, 0x2f

    .line 17
    if-ge v4, v2, :cond_1c

    .line 19
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    .line 22
    move-result v6

    .line 23
    if-eq v6, v5, :cond_19

    .line 25
    goto :goto_1c

    .line 26
    :cond_19
    add-int/lit8 v4, v4, 0x1

    .line 28
    goto :goto_e

    .line 29
    :cond_1c
    :goto_1c
    if-ne v4, v2, :cond_1f

    .line 31
    return-object v1

    .line 32
    :cond_1f
    move v1, v3

    .line 33
    :goto_20
    if-ge v4, v2, :cond_31

    .line 35
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    .line 38
    move-result v6

    .line 39
    if-ne v6, v5, :cond_29

    .line 41
    goto :goto_31

    .line 42
    :cond_29
    add-int/lit8 v7, v1, 0x1

    .line 44
    aput-char v6, v0, v1

    .line 46
    add-int/lit8 v4, v4, 0x1

    .line 48
    move v1, v7

    .line 49
    goto :goto_20

    .line 50
    :cond_31
    :goto_31
    if-ge v4, v2, :cond_3d

    .line 52
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    .line 55
    move-result v6

    .line 56
    if-eq v6, v5, :cond_3a

    .line 58
    goto :goto_3d

    .line 59
    :cond_3a
    add-int/lit8 v4, v4, 0x1

    .line 61
    goto :goto_31

    .line 62
    :cond_3d
    :goto_3d
    if-ge v4, v2, :cond_55

    .line 64
    add-int/lit8 v6, v1, 0x1

    .line 66
    aput-char v5, v0, v1

    .line 68
    :goto_43
    add-int/lit8 v1, v6, 0x1

    .line 70
    add-int/lit8 v7, v4, 0x1

    .line 72
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    .line 75
    move-result v4

    .line 76
    aput-char v4, v0, v6

    .line 78
    if-ge v7, v2, :cond_55

    .line 80
    if-ne v4, v5, :cond_52

    .line 82
    goto :goto_55

    .line 83
    :cond_52
    move v6, v1

    .line 84
    move v4, v7

    .line 85
    goto :goto_43

    .line 86
    :cond_55
    :goto_55
    new-instance p1, Ljava/lang/String;

    .line 88
    invoke-direct {p1, v0, v3, v1}, Ljava/lang/String;-><init>([CII)V

    .line 91
    return-object p1
.end method


# virtual methods
.method public compareDates(Ljcifs/smb/SmbFile;Ljava/lang/String;Ljcifs/smb/SmbFile;)I
    .registers 8

    .line 1
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->isDirectory()Z

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p3}, Ljcifs/smb/SmbFile;->isDirectory()Z

    .line 8
    move-result v1

    .line 9
    const/4 v2, -0x1

    .line 10
    const/4 v3, 0x1

    .line 11
    if-eq v0, v1, :cond_15

    .line 13
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->isDirectory()Z

    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_13

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    move v2, v3

    .line 21
    :goto_14
    return v2

    .line 22
    :cond_15
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->isDirectory()Z

    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_24

    .line 28
    invoke-virtual {p3}, Ljcifs/smb/SmbFile;->getName()Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p2, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 35
    move-result p1

    .line 36
    return p1

    .line 37
    :cond_24
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->lastModified()J

    .line 40
    move-result-wide p1

    .line 41
    invoke-virtual {p3}, Ljcifs/smb/SmbFile;->lastModified()J

    .line 44
    move-result-wide v0

    .line 45
    cmp-long p1, p1, v0

    .line 47
    if-lez p1, :cond_31

    .line 49
    goto :goto_32

    .line 50
    :cond_31
    move v2, v3

    .line 51
    :goto_32
    return v2
.end method

.method public compareNames(Ljcifs/smb/SmbFile;Ljava/lang/String;Ljcifs/smb/SmbFile;)I
    .registers 6

    .line 1
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->isDirectory()Z

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p3}, Ljcifs/smb/SmbFile;->isDirectory()Z

    .line 8
    move-result v1

    .line 9
    if-eq v0, v1, :cond_14

    .line 11
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->isDirectory()Z

    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_12

    .line 17
    const/4 p1, -0x1

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    const/4 p1, 0x1

    .line 20
    :goto_13
    return p1

    .line 21
    :cond_14
    invoke-virtual {p3}, Ljcifs/smb/SmbFile;->getName()Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p2, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 28
    move-result p1

    .line 29
    return p1
.end method

.method public compareSizes(Ljcifs/smb/SmbFile;Ljava/lang/String;Ljcifs/smb/SmbFile;)I
    .registers 10

    .line 1
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->isDirectory()Z

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p3}, Ljcifs/smb/SmbFile;->isDirectory()Z

    .line 8
    move-result v1

    .line 9
    const/4 v2, -0x1

    .line 10
    const/4 v3, 0x1

    .line 11
    if-eq v0, v1, :cond_15

    .line 13
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->isDirectory()Z

    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_13

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    move v2, v3

    .line 21
    :goto_14
    return v2

    .line 22
    :cond_15
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->isDirectory()Z

    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_24

    .line 28
    invoke-virtual {p3}, Ljcifs/smb/SmbFile;->getName()Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p2, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 35
    move-result p1

    .line 36
    return p1

    .line 37
    :cond_24
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->length()J

    .line 40
    move-result-wide v0

    .line 41
    invoke-virtual {p3}, Ljcifs/smb/SmbFile;->length()J

    .line 44
    move-result-wide v4

    .line 45
    sub-long/2addr v0, v4

    .line 46
    const-wide/16 v4, 0x0

    .line 48
    cmp-long p1, v0, v4

    .line 50
    if-nez p1, :cond_3c

    .line 52
    invoke-virtual {p3}, Ljcifs/smb/SmbFile;->getName()Ljava/lang/String;

    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p2, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 59
    move-result p1

    .line 60
    return p1

    .line 61
    :cond_3c
    if-lez p1, :cond_3f

    .line 63
    goto :goto_40

    .line 64
    :cond_3f
    move v2, v3

    .line 65
    :goto_40
    return v2
.end method

.method public compareTypes(Ljcifs/smb/SmbFile;Ljava/lang/String;Ljcifs/smb/SmbFile;)I
    .registers 8

    .line 1
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->isDirectory()Z

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p3}, Ljcifs/smb/SmbFile;->isDirectory()Z

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, -0x1

    .line 11
    if-eq v0, v1, :cond_14

    .line 13
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->isDirectory()Z

    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_13

    .line 19
    move v2, v3

    .line 20
    :cond_13
    return v2

    .line 21
    :cond_14
    invoke-virtual {p3}, Ljcifs/smb/SmbFile;->getName()Ljava/lang/String;

    .line 24
    move-result-object p3

    .line 25
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->isDirectory()Z

    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_23

    .line 31
    invoke-virtual {p2, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 34
    move-result p1

    .line 35
    return p1

    .line 36
    :cond_23
    const/16 p1, 0x2e

    .line 38
    invoke-virtual {p2, p1}, Ljava/lang/String;->lastIndexOf(I)I

    .line 41
    move-result v0

    .line 42
    const-string v1, ""

    .line 44
    if-ne v0, v3, :cond_2f

    .line 46
    move-object v0, v1

    .line 47
    goto :goto_34

    .line 48
    :cond_2f
    add-int/2addr v0, v2

    .line 49
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    :goto_34
    invoke-virtual {p3, p1}, Ljava/lang/String;->lastIndexOf(I)I

    .line 56
    move-result p1

    .line 57
    if-ne p1, v3, :cond_3b

    .line 59
    goto :goto_40

    .line 60
    :cond_3b
    add-int/2addr p1, v2

    .line 61
    invoke-virtual {p3, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 64
    move-result-object v1

    .line 65
    :goto_40
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 68
    move-result p1

    .line 69
    if-nez p1, :cond_4a

    .line 71
    invoke-virtual {p2, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 74
    move-result p1

    .line 75
    :cond_4a
    return p1
.end method

.method public doDirectory(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Ljcifs/smb/SmbFile;)V
    .registers 26

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v0, p1

    .line 5
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 7
    const-string v3, "MM/d/yy h:mm a"

    .line 9
    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 12
    new-instance v3, Ljava/util/GregorianCalendar;

    .line 14
    invoke-direct {v3}, Ljava/util/GregorianCalendar;-><init>()V

    .line 17
    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->setCalendar(Ljava/util/Calendar;)V

    .line 20
    invoke-virtual/range {p3 .. p3}, Ljcifs/smb/SmbFile;->listFiles()[Ljcifs/smb/SmbFile;

    .line 23
    move-result-object v3

    .line 24
    sget v4, Ljcifs/util/LogStream;->level:I

    .line 26
    const/4 v5, 0x2

    .line 27
    if-le v4, v5, :cond_34

    .line 29
    sget-object v4, Ljcifs/http/NetworkExplorer;->log:Ljcifs/util/LogStream;

    .line 31
    new-instance v6, Ljava/lang/StringBuilder;

    .line 33
    array-length v7, v3

    .line 34
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 37
    move-result-object v7

    .line 38
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    const-string v7, " items listed"

    .line 43
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v6

    .line 50
    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 53
    :cond_34
    new-instance v4, Ljava/util/LinkedList;

    .line 55
    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 58
    const-string v6, "fmt"

    .line 60
    invoke-interface {v0, v6}, Ljavax/servlet/http/HttpServletRequest;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    move-result-object v6

    .line 64
    if-nez v6, :cond_43

    .line 66
    const-string v6, "col"

    .line 68
    :cond_43
    const-string v7, "sort"

    .line 70
    invoke-interface {v0, v7}, Ljavax/servlet/http/HttpServletRequest;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    move-result-object v0

    .line 74
    const/4 v7, 0x3

    .line 75
    const/4 v9, 0x1

    .line 76
    if-eqz v0, :cond_74

    .line 78
    const-string v10, "name"

    .line 80
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    move-result v10

    .line 84
    if-eqz v10, :cond_56

    .line 86
    goto :goto_74

    .line 87
    :cond_56
    const-string v10, "size"

    .line 89
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    move-result v10

    .line 93
    if-eqz v10, :cond_60

    .line 95
    move v10, v9

    .line 96
    goto :goto_75

    .line 97
    :cond_60
    const-string v10, "type"

    .line 99
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    move-result v10

    .line 103
    if-eqz v10, :cond_6a

    .line 105
    move v10, v5

    .line 106
    goto :goto_75

    .line 107
    :cond_6a
    const-string v10, "date"

    .line 109
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    move-result v0

    .line 113
    if-eqz v0, :cond_74

    .line 115
    move v10, v7

    .line 116
    goto :goto_75

    .line 117
    :cond_74
    :goto_74
    const/4 v10, 0x0

    .line 118
    :goto_75
    const/16 v0, 0x1c

    .line 120
    move v11, v0

    .line 121
    const/4 v12, 0x0

    .line 122
    const/4 v13, 0x0

    .line 123
    const/4 v14, 0x0

    .line 124
    :goto_7b
    array-length v0, v3

    .line 125
    if-lt v12, v0, :cond_2c8

    .line 127
    const/16 v0, 0x32

    .line 129
    if-le v11, v0, :cond_83

    .line 131
    move v11, v0

    .line 132
    :cond_83
    mul-int/lit8 v0, v11, 0x9

    .line 134
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletResponse;->getWriter()Ljava/io/PrintWriter;

    .line 137
    move-result-object v15

    .line 138
    const-string v7, "text/html"

    .line 140
    move-object/from16 v8, p2

    .line 142
    invoke-interface {v8, v7}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    .line 145
    const-string v7, "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">"

    .line 147
    invoke-virtual {v15, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 150
    const-string v7, "<html><head><title>Network Explorer</title>"

    .line 152
    invoke-virtual {v15, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 155
    const-string v7, "<meta HTTP-EQUIV=\"Pragma\" CONTENT=\"no-cache\">"

    .line 157
    invoke-virtual {v15, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 160
    const-string v7, "<style TYPE=\"text/css\">"

    .line 162
    invoke-virtual {v15, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 165
    iget-object v7, v1, Ljcifs/http/NetworkExplorer;->style:Ljava/lang/String;

    .line 167
    invoke-virtual {v15, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 170
    array-length v3, v3

    .line 171
    const/16 v7, 0xc8

    .line 173
    if-ge v3, v7, :cond_bd

    .line 175
    const-string v3, "    a:hover {"

    .line 177
    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 180
    const-string v3, "        background: #a2ff01;"

    .line 182
    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 185
    const-string v3, "    }"

    .line 187
    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 190
    :cond_bd
    const-string v3, "</STYLE>"

    .line 192
    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 195
    const-string v3, "</head><body>"

    .line 197
    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 200
    new-instance v3, Ljava/lang/StringBuilder;

    .line 202
    const-string v7, "<a class=\"sort\" style=\"width: "

    .line 204
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 210
    const-string v7, ";\" href=\"?fmt=detail&sort=name\">Name</a>"

    .line 212
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    move-result-object v3

    .line 219
    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 222
    const-string v3, "<a class=\"sort\" href=\"?fmt=detail&sort=size\">Size</a>"

    .line 224
    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 227
    const-string v3, "<a class=\"sort\" href=\"?fmt=detail&sort=type\">Type</a>"

    .line 229
    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 232
    const-string v3, "<a class=\"sort\" style=\"width: 180\" href=\"?fmt=detail&sort=date\">Modified</a><br clear=\'all\'><p>"

    .line 234
    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 237
    invoke-virtual/range {p3 .. p3}, Ljcifs/smb/SmbFile;->getCanonicalPath()Ljava/lang/String;

    .line 240
    move-result-object v3

    .line 241
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 244
    move-result v7

    .line 245
    const/4 v8, 0x7

    .line 246
    if-ge v7, v8, :cond_ff

    .line 248
    const-string v3, "<b><big>smb://</big></b><br>"

    .line 250
    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 253
    const-string v3, "."

    .line 255
    goto :goto_117

    .line 256
    :cond_ff
    new-instance v7, Ljava/lang/StringBuilder;

    .line 258
    const-string v8, "<b><big>"

    .line 260
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    const-string v3, "</big></b><br>"

    .line 268
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    move-result-object v3

    .line 275
    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 278
    const-string v3, "../"

    .line 280
    :goto_117
    new-instance v7, Ljava/lang/StringBuilder;

    .line 282
    add-int v8, v13, v14

    .line 284
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 287
    move-result-object v8

    .line 288
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 291
    const-string v8, " objects ("

    .line 293
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 299
    const-string v8, " directories, "

    .line 301
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 307
    const-string v8, " files)<br>"

    .line 309
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    move-result-object v7

    .line 316
    invoke-virtual {v15, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 319
    const-string v7, "<b><a class=\"plain\" href=\".\">normal</a> | <a class=\"plain\" href=\"?fmt=detail\">detailed</a></b>"

    .line 321
    invoke-virtual {v15, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 324
    const-string v7, "<p><table border=\'0\' cellspacing=\'0\' cellpadding=\'0\'><tr><td>"

    .line 326
    invoke-virtual {v15, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 329
    new-instance v7, Ljava/lang/StringBuilder;

    .line 331
    const-string v8, "<A style=\"width: "

    .line 333
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 336
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 339
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 342
    move-result-object v7

    .line 343
    invoke-virtual {v15, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 346
    const-string v7, "; height: 18;\" HREF=\""

    .line 348
    invoke-virtual {v15, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 351
    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 354
    const-string v10, "\"><b>&uarr;</b></a>"

    .line 356
    invoke-virtual {v15, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 359
    const-string v10, "detail"

    .line 361
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 364
    move-result v11

    .line 365
    const-string v12, "<br clear=\'all\'>"

    .line 367
    if-eqz v11, :cond_173

    .line 369
    invoke-virtual {v15, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 372
    :cond_173
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 375
    move-result v11

    .line 376
    if-eq v11, v9, :cond_17f

    .line 378
    invoke-virtual/range {p3 .. p3}, Ljcifs/smb/SmbFile;->getType()I

    .line 381
    move-result v11

    .line 382
    if-eq v11, v5, :cond_181

    .line 384
    :cond_17f
    const-string v3, ""

    .line 386
    :cond_181
    invoke-virtual {v4}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    .line 389
    move-result-object v16

    .line 390
    :goto_185
    invoke-interface/range {v16 .. v16}, Ljava/util/ListIterator;->hasNext()Z

    .line 393
    move-result v4

    .line 394
    if-nez v4, :cond_199

    .line 396
    const-string v0, "</td></tr></table>"

    .line 398
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 401
    const-string v0, "</BODY></HTML>"

    .line 403
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 406
    invoke-virtual {v15}, Ljava/io/PrintWriter;->close()V

    .line 409
    return-void

    .line 410
    :cond_199
    invoke-interface/range {v16 .. v16}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 413
    move-result-object v4

    .line 414
    check-cast v4, Ljcifs/smb/SmbFile;

    .line 416
    invoke-virtual {v4}, Ljcifs/smb/SmbFile;->getName()Ljava/lang/String;

    .line 419
    move-result-object v5

    .line 420
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 423
    move-result v11

    .line 424
    const-string v13, "</b></a>"

    .line 426
    const-wide/16 v17, 0x400

    .line 428
    const-string v14, "\"><b>"

    .line 430
    if-eqz v11, :cond_252

    .line 432
    new-instance v11, Ljava/lang/StringBuilder;

    .line 434
    invoke-direct {v11, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 437
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 440
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 443
    move-result-object v11

    .line 444
    invoke-virtual {v15, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 447
    invoke-virtual {v15, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 450
    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 453
    invoke-virtual {v15, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 456
    invoke-virtual {v4}, Ljcifs/smb/SmbFile;->isDirectory()Z

    .line 459
    move-result v11

    .line 460
    if-eqz v11, :cond_1d9

    .line 462
    const-string v4, "?fmt=detail\"><b>"

    .line 464
    invoke-virtual {v15, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 467
    invoke-virtual {v15, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 470
    invoke-virtual {v15, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 473
    goto :goto_24d

    .line 474
    :cond_1d9
    invoke-virtual {v15, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 477
    invoke-virtual {v15, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 480
    const-string v11, "</b></a><div align=\'right\'>"

    .line 482
    invoke-virtual {v15, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 485
    new-instance v11, Ljava/lang/StringBuilder;

    .line 487
    invoke-virtual {v4}, Ljcifs/smb/SmbFile;->length()J

    .line 490
    move-result-wide v13

    .line 491
    div-long v13, v13, v17

    .line 493
    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 496
    move-result-object v13

    .line 497
    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 500
    const-string v13, " KB </div><div>"

    .line 502
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 508
    move-result-object v11

    .line 509
    invoke-virtual {v15, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 512
    const/16 v11, 0x2e

    .line 514
    invoke-virtual {v5, v11}, Ljava/lang/String;->lastIndexOf(I)I

    .line 517
    move-result v11

    .line 518
    add-int/2addr v11, v9

    .line 519
    if-le v11, v9, :cond_22e

    .line 521
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 524
    move-result v13

    .line 525
    sub-int/2addr v13, v11

    .line 526
    const/4 v14, 0x6

    .line 527
    if-ge v13, v14, :cond_22e

    .line 529
    new-instance v13, Ljava/lang/StringBuilder;

    .line 531
    invoke-virtual {v5, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 534
    move-result-object v5

    .line 535
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 538
    move-result-object v5

    .line 539
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 542
    move-result-object v5

    .line 543
    invoke-direct {v13, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 546
    const-string v5, "</div class=\'ext\'>"

    .line 548
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 554
    move-result-object v5

    .line 555
    invoke-virtual {v15, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 558
    goto :goto_233

    .line 559
    :cond_22e
    const-string v5, "&nbsp;</div>"

    .line 561
    invoke-virtual {v15, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 564
    :goto_233
    const-string v5, "<div style=\'width: 180\'>"

    .line 566
    invoke-virtual {v15, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 569
    new-instance v5, Ljava/util/Date;

    .line 571
    invoke-virtual {v4}, Ljcifs/smb/SmbFile;->lastModified()J

    .line 574
    move-result-wide v13

    .line 575
    invoke-direct {v5, v13, v14}, Ljava/util/Date;-><init>(J)V

    .line 578
    invoke-virtual {v2, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 581
    move-result-object v4

    .line 582
    invoke-virtual {v15, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 585
    const-string v4, "</div>"

    .line 587
    invoke-virtual {v15, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 590
    :goto_24d
    invoke-virtual {v15, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 593
    goto/16 :goto_185

    .line 595
    :cond_252
    new-instance v11, Ljava/lang/StringBuilder;

    .line 597
    invoke-direct {v11, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 600
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 603
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 606
    move-result-object v11

    .line 607
    invoke-virtual {v15, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 610
    invoke-virtual {v4}, Ljcifs/smb/SmbFile;->isDirectory()Z

    .line 613
    move-result v11

    .line 614
    if-eqz v11, :cond_27b

    .line 616
    invoke-virtual {v15, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 619
    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 622
    invoke-virtual {v15, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 625
    invoke-virtual {v15, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 628
    invoke-virtual {v15, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 631
    invoke-virtual {v15, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 634
    goto/16 :goto_185

    .line 636
    :cond_27b
    const-string v11, ";\" HREF=\""

    .line 638
    invoke-virtual {v15, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 641
    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 644
    invoke-virtual {v15, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 647
    invoke-virtual {v15, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 650
    invoke-virtual {v15, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 653
    const-string v5, "</b><br><small>"

    .line 655
    invoke-virtual {v15, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 658
    new-instance v5, Ljava/lang/StringBuilder;

    .line 660
    invoke-virtual {v4}, Ljcifs/smb/SmbFile;->length()J

    .line 663
    move-result-wide v13

    .line 664
    div-long v13, v13, v17

    .line 666
    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 669
    move-result-object v11

    .line 670
    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 673
    const-string v11, "KB <br>"

    .line 675
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 681
    move-result-object v5

    .line 682
    invoke-virtual {v15, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 685
    new-instance v5, Ljava/util/Date;

    .line 687
    invoke-virtual {v4}, Ljcifs/smb/SmbFile;->lastModified()J

    .line 690
    move-result-wide v13

    .line 691
    invoke-direct {v5, v13, v14}, Ljava/util/Date;-><init>(J)V

    .line 694
    invoke-virtual {v2, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 697
    move-result-object v4

    .line 698
    invoke-virtual {v15, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 701
    const-string v4, "</small>"

    .line 703
    invoke-virtual {v15, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 706
    const-string v4, "</a>"

    .line 708
    invoke-virtual {v15, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 711
    goto/16 :goto_185

    .line 713
    :cond_2c8
    :try_start_2c8
    aget-object v0, v3, v12

    .line 715
    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->getType()I

    .line 718
    move-result v0
    :try_end_2ce
    .catch Ljcifs/smb/SmbAuthException; {:try_start_2c8 .. :try_end_2ce} :catch_2e9
    .catch Ljcifs/smb/SmbException; {:try_start_2c8 .. :try_end_2ce} :catch_2d4

    .line 719
    const/16 v15, 0x10

    .line 721
    if-ne v0, v15, :cond_2f3

    .line 723
    goto/16 :goto_387

    .line 725
    :catch_2d4
    move-exception v0

    .line 726
    sget v15, Ljcifs/util/LogStream;->level:I

    .line 728
    if-le v15, v5, :cond_2de

    .line 730
    sget-object v15, Ljcifs/http/NetworkExplorer;->log:Ljcifs/util/LogStream;

    .line 732
    invoke-virtual {v0, v15}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 735
    :cond_2de
    invoke-virtual {v0}, Ljcifs/smb/SmbException;->getNtStatus()I

    .line 738
    move-result v15

    .line 739
    const v8, -0x3fffffff  # -2.0000002f

    .line 742
    if-ne v15, v8, :cond_2e8

    .line 744
    goto :goto_2f3

    .line 745
    :cond_2e8
    throw v0

    .line 746
    :catch_2e9
    move-exception v0

    .line 747
    sget v8, Ljcifs/util/LogStream;->level:I

    .line 749
    if-le v8, v5, :cond_2f3

    .line 751
    sget-object v8, Ljcifs/http/NetworkExplorer;->log:Ljcifs/util/LogStream;

    .line 753
    invoke-virtual {v0, v8}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 756
    :cond_2f3
    :goto_2f3
    aget-object v0, v3, v12

    .line 758
    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->isDirectory()Z

    .line 761
    move-result v0

    .line 762
    if-eqz v0, :cond_2fe

    .line 764
    add-int/lit8 v13, v13, 0x1

    .line 766
    goto :goto_300

    .line 767
    :cond_2fe
    add-int/lit8 v14, v14, 0x1

    .line 769
    :goto_300
    aget-object v0, v3, v12

    .line 771
    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->getName()Ljava/lang/String;

    .line 774
    move-result-object v0

    .line 775
    sget v8, Ljcifs/util/LogStream;->level:I

    .line 777
    if-le v8, v7, :cond_324

    .line 779
    sget-object v8, Ljcifs/http/NetworkExplorer;->log:Ljcifs/util/LogStream;

    .line 781
    new-instance v15, Ljava/lang/StringBuilder;

    .line 783
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 786
    move-result-object v7

    .line 787
    invoke-direct {v15, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 790
    const-string v7, ": "

    .line 792
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 801
    move-result-object v7

    .line 802
    invoke-virtual {v8, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 805
    :cond_324
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 808
    move-result v7

    .line 809
    if-le v7, v11, :cond_32b

    .line 811
    move v11, v7

    .line 812
    :cond_32b
    invoke-virtual {v4}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    .line 815
    move-result-object v7

    .line 816
    const/4 v8, 0x0

    .line 817
    :goto_330
    invoke-interface {v7}, Ljava/util/ListIterator;->hasNext()Z

    .line 820
    move-result v15

    .line 821
    if-nez v15, :cond_337

    .line 823
    goto :goto_382

    .line 824
    :cond_337
    if-nez v10, :cond_34a

    .line 826
    aget-object v15, v3, v12

    .line 828
    invoke-interface {v7}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 831
    move-result-object v17

    .line 832
    move-object/from16 v5, v17

    .line 834
    check-cast v5, Ljcifs/smb/SmbFile;

    .line 836
    invoke-virtual {v1, v15, v0, v5}, Ljcifs/http/NetworkExplorer;->compareNames(Ljcifs/smb/SmbFile;Ljava/lang/String;Ljcifs/smb/SmbFile;)I

    .line 839
    move-result v5

    .line 840
    if-gez v5, :cond_38d

    .line 842
    goto :goto_382

    .line 843
    :cond_34a
    if-ne v10, v9, :cond_35b

    .line 845
    aget-object v5, v3, v12

    .line 847
    invoke-interface {v7}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 850
    move-result-object v15

    .line 851
    check-cast v15, Ljcifs/smb/SmbFile;

    .line 853
    invoke-virtual {v1, v5, v0, v15}, Ljcifs/http/NetworkExplorer;->compareSizes(Ljcifs/smb/SmbFile;Ljava/lang/String;Ljcifs/smb/SmbFile;)I

    .line 856
    move-result v5

    .line 857
    if-gez v5, :cond_38d

    .line 859
    goto :goto_382

    .line 860
    :cond_35b
    const/4 v5, 0x2

    .line 861
    if-ne v10, v5, :cond_36f

    .line 863
    aget-object v15, v3, v12

    .line 865
    invoke-interface {v7}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 868
    move-result-object v17

    .line 869
    move-object/from16 v5, v17

    .line 871
    check-cast v5, Ljcifs/smb/SmbFile;

    .line 873
    invoke-virtual {v1, v15, v0, v5}, Ljcifs/http/NetworkExplorer;->compareTypes(Ljcifs/smb/SmbFile;Ljava/lang/String;Ljcifs/smb/SmbFile;)I

    .line 876
    move-result v5

    .line 877
    if-gez v5, :cond_38d

    .line 879
    goto :goto_382

    .line 880
    :cond_36f
    const/4 v5, 0x3

    .line 881
    if-ne v10, v5, :cond_38d

    .line 883
    aget-object v15, v3, v12

    .line 885
    invoke-interface {v7}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 888
    move-result-object v16

    .line 889
    move-object/from16 v5, v16

    .line 891
    check-cast v5, Ljcifs/smb/SmbFile;

    .line 893
    invoke-virtual {v1, v15, v0, v5}, Ljcifs/http/NetworkExplorer;->compareDates(Ljcifs/smb/SmbFile;Ljava/lang/String;Ljcifs/smb/SmbFile;)I

    .line 896
    move-result v5

    .line 897
    if-gez v5, :cond_38d

    .line 899
    :goto_382
    aget-object v0, v3, v12

    .line 901
    invoke-virtual {v4, v8, v0}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 904
    :goto_387
    add-int/lit8 v12, v12, 0x1

    .line 906
    const/4 v5, 0x2

    .line 907
    const/4 v7, 0x3

    .line 908
    goto/16 :goto_7b

    .line 910
    :cond_38d
    add-int/lit8 v8, v8, 0x1

    .line 912
    const/4 v5, 0x2

    .line 913
    goto :goto_330
.end method

.method public doFile(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Ljcifs/smb/SmbFile;)V
    .registers 9

    .line 1
    const/16 p1, 0x2000

    .line 3
    new-array p1, p1, [B

    .line 5
    new-instance v0, Ljcifs/smb/SmbFileInputStream;

    .line 7
    invoke-direct {v0, p3}, Ljcifs/smb/SmbFileInputStream;-><init>(Ljcifs/smb/SmbFile;)V

    .line 10
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {p3}, Ljcifs/smb/SmbFile;->getPath()Ljava/lang/String;

    .line 17
    move-result-object v2

    .line 18
    const-string v3, "text/plain"

    .line 20
    invoke-interface {p2, v3}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    .line 23
    const/16 v3, 0x2e

    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    .line 28
    move-result v3

    .line 29
    if-lez v3, :cond_3c

    .line 31
    const/4 v4, 0x1

    .line 32
    add-int/2addr v3, v4

    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 36
    move-result-object v2

    .line 37
    if-eqz v2, :cond_3c

    .line 39
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 42
    move-result v3

    .line 43
    if-le v3, v4, :cond_3c

    .line 45
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 48
    move-result v3

    .line 49
    const/4 v4, 0x6

    .line 50
    if-ge v3, v4, :cond_3c

    .line 52
    iget-object v3, p0, Ljcifs/http/NetworkExplorer;->mimeMap:Ljcifs/util/MimeMap;

    .line 54
    invoke-virtual {v3, v2}, Ljcifs/util/MimeMap;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    move-result-object v2

    .line 58
    invoke-interface {p2, v2}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    .line 61
    :cond_3c
    new-instance v2, Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {p3}, Ljcifs/smb/SmbFile;->length()J

    .line 66
    move-result-wide v3

    .line 67
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 70
    move-result-object p3

    .line 71
    invoke-direct {v2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object p3

    .line 78
    const-string v2, "Content-Length"

    .line 80
    invoke-interface {p2, v2, p3}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string p3, "Accept-Ranges"

    .line 85
    const-string v2, "Bytes"

    .line 87
    invoke-interface {p2, p3, v2}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :goto_59
    invoke-virtual {v0, p1}, Ljcifs/smb/SmbFileInputStream;->read([B)I

    .line 93
    move-result p2

    .line 94
    const/4 p3, -0x1

    .line 95
    if-ne p2, p3, :cond_61

    .line 97
    return-void

    .line 98
    :cond_61
    const/4 p3, 0x0

    .line 99
    invoke-virtual {v1, p1, p3, p2}, Ljavax/servlet/ServletOutputStream;->write([BII)V

    .line 102
    goto :goto_59
.end method

.method public doGet(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .registers 22

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v2, p1

    .line 5
    move-object/from16 v3, p2

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-interface {v2, v0}, Ljavax/servlet/http/HttpServletRequest;->getSession(Z)Ljavax/servlet/http/HttpSession;

    .line 11
    move-result-object v4

    .line 12
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    .line 15
    move-result-object v5

    .line 16
    const/16 v6, 0x2f

    .line 18
    if-eqz v5, :cond_29

    .line 20
    invoke-direct {v1, v5}, Ljcifs/http/NetworkExplorer;->parseServerAndShare(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object v7

    .line 24
    if-eqz v7, :cond_2a

    .line 26
    invoke-virtual {v7, v6}, Ljava/lang/String;->indexOf(I)I

    .line 29
    move-result v6

    .line 30
    if-lez v6, :cond_2a

    .line 32
    invoke-virtual {v7, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 35
    move-result-object v6

    .line 36
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 39
    move-result-object v6

    .line 40
    move v7, v0

    .line 41
    goto :goto_30

    .line 42
    :cond_29
    const/4 v7, 0x0

    .line 43
    :cond_2a
    const/4 v6, 0x1

    .line 44
    move-object/from16 v18, v7

    .line 46
    move v7, v6

    .line 47
    move-object/from16 v6, v18

    .line 49
    :goto_30
    const-string v8, "Authorization"

    .line 51
    invoke-interface {v2, v8}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    move-result-object v8

    .line 55
    iget-boolean v9, v1, Ljcifs/http/NetworkExplorer;->enableBasic:Z

    .line 57
    if-eqz v9, :cond_45

    .line 59
    iget-boolean v9, v1, Ljcifs/http/NetworkExplorer;->insecureBasic:Z

    .line 61
    if-nez v9, :cond_44

    .line 63
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->isSecure()Z

    .line 66
    move-result v9

    .line 67
    if-eqz v9, :cond_45

    .line 69
    :cond_44
    const/4 v0, 0x1

    .line 70
    :cond_45
    move v9, v0

    .line 71
    const-string v10, "\""

    .line 73
    const-string v11, "Basic realm=\""

    .line 75
    const-string v12, "close"

    .line 77
    const-string v13, "Connection"

    .line 79
    const-string v14, "NTLM"

    .line 81
    const-string v15, "npa-"

    .line 83
    move-object/from16 v16, v12

    .line 85
    const-string v12, "WWW-Authenticate"

    .line 87
    if-eqz v8, :cond_104

    .line 89
    const-string v0, "NTLM "

    .line 91
    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 94
    move-result v17

    .line 95
    if-nez v17, :cond_6d

    .line 97
    if-eqz v9, :cond_104

    .line 99
    move-object/from16 v17, v13

    .line 101
    const-string v13, "Basic "

    .line 103
    invoke-virtual {v8, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 106
    move-result v13

    .line 107
    if-eqz v13, :cond_106

    .line 109
    goto :goto_6f

    .line 110
    :cond_6d
    move-object/from16 v17, v13

    .line 112
    :goto_6f
    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 115
    move-result v0

    .line 116
    if-eqz v0, :cond_9d

    .line 118
    if-eqz v5, :cond_7f

    .line 120
    if-nez v6, :cond_7a

    .line 122
    goto :goto_7f

    .line 123
    :cond_7a
    invoke-static {v6, v7}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;Z)Ljcifs/UniAddress;

    .line 126
    move-result-object v0

    .line 127
    goto :goto_8f

    .line 128
    :cond_7f
    :goto_7f
    const-string v0, "\u0001\u0002__MSBROWSE__\u0002"

    .line 130
    const/4 v7, 0x0

    .line 131
    const/4 v8, 0x1

    .line 132
    invoke-static {v0, v8, v7}, Ljcifs/netbios/NbtAddress;->getByName(Ljava/lang/String;ILjava/lang/String;)Ljcifs/netbios/NbtAddress;

    .line 135
    move-result-object v0

    .line 136
    invoke-virtual {v0}, Ljcifs/netbios/NbtAddress;->getHostAddress()Ljava/lang/String;

    .line 139
    move-result-object v0

    .line 140
    invoke-static {v0}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;)Ljcifs/UniAddress;

    .line 143
    move-result-object v0

    .line 144
    :goto_8f
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getSession()Ljavax/servlet/http/HttpSession;

    .line 147
    invoke-static {v0}, Ljcifs/smb/SmbSession;->getChallenge(Ljcifs/UniAddress;)[B

    .line 150
    move-result-object v0

    .line 151
    invoke-static {v2, v3, v0}, Ljcifs/http/NtlmSsp;->authenticate(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;[B)Ljcifs/smb/NtlmPasswordAuthentication;

    .line 154
    move-result-object v0

    .line 155
    if-nez v0, :cond_f0

    .line 157
    return-void

    .line 158
    :cond_9d
    new-instance v0, Ljava/lang/String;

    .line 160
    const/4 v7, 0x6

    .line 161
    invoke-virtual {v8, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 164
    move-result-object v7

    .line 165
    invoke-static {v7}, Ljcifs/util/Base64;->decode(Ljava/lang/String;)[B

    .line 168
    move-result-object v7

    .line 169
    const-string v8, "US-ASCII"

    .line 171
    invoke-direct {v0, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 174
    const/16 v7, 0x3a

    .line 176
    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    .line 179
    move-result v7

    .line 180
    const/4 v8, -0x1

    .line 181
    if-eq v7, v8, :cond_bc

    .line 183
    const/4 v13, 0x0

    .line 184
    invoke-virtual {v0, v13, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 187
    move-result-object v13

    .line 188
    goto :goto_bd

    .line 189
    :cond_bc
    move-object v13, v0

    .line 190
    :goto_bd
    if-eq v7, v8, :cond_c6

    .line 192
    add-int/lit8 v7, v7, 0x1

    .line 194
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 197
    move-result-object v0

    .line 198
    goto :goto_c8

    .line 199
    :cond_c6
    const-string v0, ""

    .line 201
    :goto_c8
    const/16 v7, 0x5c

    .line 203
    invoke-virtual {v13, v7}, Ljava/lang/String;->indexOf(I)I

    .line 206
    move-result v7

    .line 207
    if-ne v7, v8, :cond_d7

    .line 209
    const/16 v7, 0x2f

    .line 211
    invoke-virtual {v13, v7}, Ljava/lang/String;->indexOf(I)I

    .line 214
    move-result v7

    .line 215
    const/4 v8, -0x1

    .line 216
    :cond_d7
    if-eq v7, v8, :cond_df

    .line 218
    const/4 v8, 0x0

    .line 219
    invoke-virtual {v13, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 222
    move-result-object v8

    .line 223
    goto :goto_e1

    .line 224
    :cond_df
    iget-object v8, v1, Ljcifs/http/NetworkExplorer;->defaultDomain:Ljava/lang/String;

    .line 226
    :goto_e1
    const/4 v2, -0x1

    .line 227
    if-eq v7, v2, :cond_ea

    .line 229
    add-int/lit8 v7, v7, 0x1

    .line 231
    invoke-virtual {v13, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 234
    move-result-object v13

    .line 235
    :cond_ea
    new-instance v2, Ljcifs/smb/NtlmPasswordAuthentication;

    .line 237
    invoke-direct {v2, v8, v13, v0}, Ljcifs/smb/NtlmPasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    move-object v0, v2

    .line 241
    :cond_f0
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getSession()Ljavax/servlet/http/HttpSession;

    .line 244
    move-result-object v2

    .line 245
    new-instance v7, Ljava/lang/StringBuilder;

    .line 247
    invoke-direct {v7, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    move-result-object v7

    .line 257
    invoke-interface {v2, v7, v0}, Ljavax/servlet/http/HttpSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 260
    goto :goto_144

    .line 261
    :cond_104
    move-object/from16 v17, v13

    .line 263
    :cond_106
    const/4 v0, 0x0

    .line 264
    iget-boolean v2, v1, Ljcifs/http/NetworkExplorer;->credentialsSupplied:Z

    .line 266
    if-nez v2, :cond_144

    .line 268
    if-eqz v4, :cond_11f

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    .line 272
    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 275
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 281
    move-result-object v0

    .line 282
    invoke-interface {v4, v0}, Ljavax/servlet/http/HttpSession;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    .line 285
    move-result-object v0

    .line 286
    check-cast v0, Ljcifs/smb/NtlmPasswordAuthentication;

    .line 288
    :cond_11f
    if-nez v0, :cond_144

    .line 290
    invoke-interface {v3, v12, v14}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    if-eqz v9, :cond_134

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    .line 297
    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 300
    iget-object v2, v1, Ljcifs/http/NetworkExplorer;->realm:Ljava/lang/String;

    .line 302
    invoke-static {v0, v2, v10}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 305
    move-result-object v0

    .line 306
    invoke-interface {v3, v12, v0}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    :cond_134
    move-object/from16 v2, v16

    .line 311
    move-object/from16 v7, v17

    .line 313
    invoke-interface {v3, v7, v2}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const/16 v0, 0x191

    .line 318
    invoke-interface {v3, v0}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 321
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletResponse;->flushBuffer()V

    .line 324
    return-void

    .line 325
    :cond_144
    :goto_144
    move-object/from16 v2, v16

    .line 327
    move-object/from16 v7, v17

    .line 329
    const-string v8, "smb:/"

    .line 331
    if-eqz v0, :cond_169

    .line 333
    :try_start_14c
    new-instance v13, Ljcifs/smb/SmbFile;
    :try_end_14e
    .catch Ljcifs/smb/SmbAuthException; {:try_start_14c .. :try_end_14e} :catch_164
    .catch Ljcifs/smb/DfsReferral; {:try_start_14c .. :try_end_14e} :catch_160

    .line 335
    move-object/from16 v16, v2

    .line 337
    :try_start_150
    new-instance v2, Ljava/lang/StringBuilder;

    .line 339
    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 342
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 348
    move-result-object v2

    .line 349
    invoke-direct {v13, v2, v0}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)V

    .line 352
    goto :goto_186

    .line 353
    :catch_160
    move-exception v0

    .line 354
    move-object/from16 v2, p1

    .line 356
    goto :goto_19c

    .line 357
    :catch_164
    move-exception v0

    .line 358
    move-object/from16 v16, v2

    .line 360
    goto/16 :goto_1e5

    .line 362
    :cond_169
    move-object/from16 v16, v2

    .line 364
    if-nez v6, :cond_175

    .line 366
    new-instance v13, Ljcifs/smb/SmbFile;

    .line 368
    const-string v0, "smb://"

    .line 370
    invoke-direct {v13, v0}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    .line 373
    goto :goto_186

    .line 374
    :cond_175
    new-instance v13, Ljcifs/smb/SmbFile;

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    .line 378
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 381
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 387
    move-result-object v0

    .line 388
    invoke-direct {v13, v0}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    .line 391
    :goto_186
    invoke-virtual {v13}, Ljcifs/smb/SmbFile;->isDirectory()Z

    .line 394
    move-result v0
    :try_end_18a
    .catch Ljcifs/smb/SmbAuthException; {:try_start_150 .. :try_end_18a} :catch_1e4
    .catch Ljcifs/smb/DfsReferral; {:try_start_150 .. :try_end_18a} :catch_160

    .line 395
    if-eqz v0, :cond_192

    .line 397
    move-object/from16 v2, p1

    .line 399
    :try_start_18e
    invoke-virtual {v1, v2, v3, v13}, Ljcifs/http/NetworkExplorer;->doDirectory(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Ljcifs/smb/SmbFile;)V

    .line 402
    goto :goto_197

    .line 403
    :cond_192
    move-object/from16 v2, p1

    .line 405
    invoke-virtual {v1, v2, v3, v13}, Ljcifs/http/NetworkExplorer;->doFile(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Ljcifs/smb/SmbFile;)V
    :try_end_197
    .catch Ljcifs/smb/SmbAuthException; {:try_start_18e .. :try_end_197} :catch_19a
    .catch Ljcifs/smb/DfsReferral; {:try_start_18e .. :try_end_197} :catch_198

    .line 408
    :goto_197
    return-void

    .line 409
    :catch_198
    move-exception v0

    .line 410
    goto :goto_19c

    .line 411
    :catch_19a
    move-exception v0

    .line 412
    goto :goto_1e7

    .line 413
    :goto_19c
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestURL()Ljava/lang/StringBuffer;

    .line 416
    move-result-object v4

    .line 417
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getQueryString()Ljava/lang/String;

    .line 420
    move-result-object v5

    .line 421
    new-instance v6, Ljava/lang/StringBuffer;

    .line 423
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    .line 426
    move-result v7

    .line 427
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    .line 430
    move-result-object v8

    .line 431
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 434
    move-result v8

    .line 435
    sub-int/2addr v7, v8

    .line 436
    const/4 v8, 0x0

    .line 437
    invoke-virtual {v4, v8, v7}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    .line 440
    move-result-object v4

    .line 441
    invoke-direct {v6, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 444
    const/16 v4, 0x2f

    .line 446
    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 449
    iget-object v7, v0, Ljcifs/smb/DfsReferral;->server:Ljava/lang/String;

    .line 451
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 454
    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 457
    iget-object v0, v0, Ljcifs/smb/DfsReferral;->share:Ljava/lang/String;

    .line 459
    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 462
    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 465
    if-eqz v5, :cond_1d9

    .line 467
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getQueryString()Ljava/lang/String;

    .line 470
    move-result-object v0

    .line 471
    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 474
    :cond_1d9
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 477
    move-result-object v0

    .line 478
    invoke-interface {v3, v0}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V

    .line 481
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletResponse;->flushBuffer()V

    .line 484
    return-void

    .line 485
    :catch_1e4
    move-exception v0

    .line 486
    :goto_1e5
    move-object/from16 v2, p1

    .line 488
    :goto_1e7
    if-eqz v4, :cond_1f8

    .line 490
    new-instance v5, Ljava/lang/StringBuilder;

    .line 492
    invoke-direct {v5, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 495
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 501
    move-result-object v5

    .line 502
    invoke-interface {v4, v5}, Ljavax/servlet/http/HttpSession;->removeAttribute(Ljava/lang/String;)V

    .line 505
    :cond_1f8
    invoke-virtual {v0}, Ljcifs/smb/SmbException;->getNtStatus()I

    .line 508
    move-result v0

    .line 509
    const v4, -0x3ffffffb  # -2.0000012f

    .line 512
    if-ne v0, v4, :cond_20d

    .line 514
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestURL()Ljava/lang/StringBuffer;

    .line 517
    move-result-object v0

    .line 518
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 521
    move-result-object v0

    .line 522
    invoke-interface {v3, v0}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V

    .line 525
    return-void

    .line 526
    :cond_20d
    invoke-interface {v3, v12, v14}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    if-eqz v9, :cond_220

    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    .line 533
    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 536
    iget-object v2, v1, Ljcifs/http/NetworkExplorer;->realm:Ljava/lang/String;

    .line 538
    invoke-static {v0, v2, v10}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 541
    move-result-object v0

    .line 542
    invoke-interface {v3, v12, v0}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    :cond_220
    move-object/from16 v2, v16

    .line 547
    invoke-interface {v3, v7, v2}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    const/16 v0, 0x191

    .line 552
    invoke-interface {v3, v0}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 555
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletResponse;->flushBuffer()V

    .line 558
    return-void
.end method

.method public init()V
    .registers 8

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 6
    const/16 v1, 0x400

    .line 8
    new-array v1, v1, [B

    .line 10
    const-string v2, "jcifs.smb.client.soTimeout"

    .line 12
    const-string v3, "600000"

    .line 14
    invoke-static {v2, v3}, Ljcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    const-string v2, "jcifs.smb.client.attrExpirationPeriod"

    .line 19
    const-string v3, "300000"

    .line 21
    invoke-static {v2, v3}, Ljcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    invoke-virtual {p0}, Ljcifs/http/NetworkExplorer;->getInitParameterNames()Ljava/util/Enumeration;

    .line 27
    move-result-object v2

    .line 28
    :cond_1b
    :goto_1b
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 31
    move-result v3

    .line 32
    if-nez v3, :cond_ab

    .line 34
    const-string v2, "jcifs.smb.client.username"

    .line 36
    invoke-static {v2}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    move-result-object v2

    .line 40
    if-nez v2, :cond_31

    .line 42
    new-instance v2, Ljcifs/http/NtlmSsp;

    .line 44
    invoke-direct {v2}, Ljcifs/http/NtlmSsp;-><init>()V

    .line 47
    iput-object v2, p0, Ljcifs/http/NetworkExplorer;->ntlmSsp:Ljcifs/http/NtlmSsp;

    .line 49
    goto :goto_34

    .line 50
    :cond_31
    const/4 v2, 0x1

    .line 51
    iput-boolean v2, p0, Ljcifs/http/NetworkExplorer;->credentialsSupplied:Z

    .line 53
    :goto_34
    :try_start_34
    new-instance v2, Ljcifs/util/MimeMap;

    .line 55
    invoke-direct {v2}, Ljcifs/util/MimeMap;-><init>()V

    .line 58
    iput-object v2, p0, Ljcifs/http/NetworkExplorer;->mimeMap:Ljcifs/util/MimeMap;

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 67
    move-result-object v2

    .line 68
    const-string v3, "jcifs/http/ne.css"

    .line 70
    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    .line 73
    move-result-object v2

    .line 74
    :goto_49
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    .line 77
    move-result v3

    .line 78
    const/4 v4, 0x0

    .line 79
    const/4 v5, -0x1

    .line 80
    if-ne v3, v5, :cond_95

    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 85
    move-result-object v0

    .line 86
    iput-object v0, p0, Ljcifs/http/NetworkExplorer;->style:Ljava/lang/String;
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_57} :catch_a0

    .line 88
    const-string v0, "jcifs.http.enableBasic"

    .line 90
    invoke-static {v0, v4}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    .line 93
    move-result v0

    .line 94
    iput-boolean v0, p0, Ljcifs/http/NetworkExplorer;->enableBasic:Z

    .line 96
    const-string v0, "jcifs.http.insecureBasic"

    .line 98
    invoke-static {v0, v4}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    .line 101
    move-result v0

    .line 102
    iput-boolean v0, p0, Ljcifs/http/NetworkExplorer;->insecureBasic:Z

    .line 104
    const-string v0, "jcifs.http.basicRealm"

    .line 106
    invoke-static {v0}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 109
    move-result-object v0

    .line 110
    iput-object v0, p0, Ljcifs/http/NetworkExplorer;->realm:Ljava/lang/String;

    .line 112
    if-nez v0, :cond_75

    .line 114
    const-string v0, "jCIFS"

    .line 116
    iput-object v0, p0, Ljcifs/http/NetworkExplorer;->realm:Ljava/lang/String;

    .line 118
    :cond_75
    const-string v0, "jcifs.smb.client.domain"

    .line 120
    invoke-static {v0}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    move-result-object v0

    .line 124
    iput-object v0, p0, Ljcifs/http/NetworkExplorer;->defaultDomain:Ljava/lang/String;

    .line 126
    const-string v0, "jcifs.util.loglevel"

    .line 128
    invoke-static {v0, v5}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    .line 131
    move-result v0

    .line 132
    if-eq v0, v5, :cond_88

    .line 134
    invoke-static {v0}, Ljcifs/util/LogStream;->setLevel(I)V

    .line 137
    :cond_88
    sget v0, Ljcifs/util/LogStream;->level:I

    .line 139
    const/4 v1, 0x2

    .line 140
    if-le v0, v1, :cond_94

    .line 142
    :try_start_8d
    sget-object v0, Ljcifs/http/NetworkExplorer;->log:Ljcifs/util/LogStream;

    .line 144
    const-string v1, "JCIFS PROPERTIES"

    .line 146
    invoke-static {v0, v1}, Ljcifs/Config;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_94} :catch_94

    .line 149
    :catch_94
    :cond_94
    return-void

    .line 150
    :cond_95
    :try_start_95
    new-instance v5, Ljava/lang/String;

    .line 152
    const-string v6, "ISO8859_1"

    .line 154
    invoke-direct {v5, v1, v4, v3, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 157
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_9f} :catch_a0

    .line 160
    goto :goto_49

    .line 161
    :catch_a0
    move-exception v0

    .line 162
    new-instance v1, Ljavax/servlet/ServletException;

    .line 164
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 167
    move-result-object v0

    .line 168
    invoke-direct {v1, v0}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/String;)V

    .line 171
    throw v1

    .line 172
    :cond_ab
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 175
    move-result-object v3

    .line 176
    check-cast v3, Ljava/lang/String;

    .line 178
    const-string v4, "jcifs."

    .line 180
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 183
    move-result v4

    .line 184
    if-eqz v4, :cond_1b

    .line 186
    invoke-virtual {p0, v3}, Ljcifs/http/NetworkExplorer;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 189
    move-result-object v4

    .line 190
    invoke-static {v3, v4}, Ljcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 193
    goto/16 :goto_1b
.end method
