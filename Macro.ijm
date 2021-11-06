inputdir = getDirectory("");// ディレクトリを指定
dirlist = getFileList(inputdir);//画像ファイルを配列取得
for(i=0;i<dirlist.length;i++){
    inputdir2 = inputdir + dirlist[i];
    filelist = getFileList(inputdir2);
    for(k=0;k<filelist.length;k++){
        print(filelist[k]);
        openfile = inputdir2 + filelist[k];
        open(openfile);
        //Add Noise
        run("Add Noise");
        saveAs("Jpeg", openfile + "-Noise");
        close();
    }
}
